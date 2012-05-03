require 'bundler/capistrano'

set :stages, %w(production staging)
set :default_stage, "staging"

require 'capistrano/ext/multistage'

default_run_options[:pty] = false
ssh_options[:forward_agent] = true

set :user, "matthewborn"

set :application, "spock"
set :scm, :git
set :repository, "ssh://git@github.com/#{user}/#{application}.git"
set :branch, "master"
