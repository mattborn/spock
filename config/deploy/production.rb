# Duplicated information in case this changes to another host

set :use_sudo, false

set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
set :deploy_env, 'production'

server 'phantom.dreamhost.com', :app, :web, :primary => true
