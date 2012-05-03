require 'bundler/capistrano'

set :stages, %w(production staging)
set :default_stage, "staging"

require 'capistrano/ext/multistage'

set :application, "spock"
set :user, "matthewborn"
set :use_sudo, false

default_run_options[:pty] = false
ssh_options[:forward_agent] = true

set :scm, :git
set :repository, "ssh://git@github.com/#{user}/#{application}.git"
set :branch, "master"

server 'phantom.dreamhost.com', :app, :web, :primary => true
