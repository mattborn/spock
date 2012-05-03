set :user, "matthewborn"
set :use_sudo, false

set :deploy_to, "/home/#{user}/beta.#{application}"
set :deploy_via, :remote_cache
set :deploy_env, 'staging'

server 'phantom.dreamhost.com', :app, :web, :primary => true
