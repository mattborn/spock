set :stages, %w(production staging)
set :default_stage, 'staging'

require 'capistrano/ext/multistage'

set :application, 'spock'
set :user, 'matthewborn'
set :use_sudo, false

default_run_options[:pty] = false
ssh_options[:forward_agent] = true

set :scm, :git
set :repository, 'ssh://git@github.com/#{user}/#{application}.git'
set :deploy_to, '/home/#{user}/#{application}'
set :deploy_via, :remote_cache
set :deploy_env, 'production'

task :uname do
	run "uname -a"
end