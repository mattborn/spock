set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
set :deploy_env, 'staging'
