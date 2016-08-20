# config valid only for Capistrano 3.1
lock '3.4.1'

require 'yaml'
app = YAML.load_file('application.yml')

set :repo_url, app["git_repo_url"]
set :application, app["app_name"]
set :deploy_to, "/home/deploy/apps/#{app['app_name']}"
# set :linked_files, %w{config/mongoid.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :user,            'deploy'
set :pty,             true
set :use_sudo,        false
set :stage,           :production
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }


set :npm_target_path, -> { release_path.join('client') }

# parses out the current branch you're on. See: http://www.harukizaemon.com/2008/05/deploying-branches-with-capistrano.html
# current_branch = `git branch`.match(/\* (\S+)\s/m)[1]
# use the branch specified as a param, then use the current branch. If all fails use master branch
# set :branch, ENV['branch'] || current_branch || "master" # you can use the 'branch' parameter on deployment to specify the branch you wish to deploy

# set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')
## Defaults:
# set :scm,           :git
# set :branch,        :master
# set :format,        :pretty
# set :log_level,     :debug
# set :keep_releases, 5

## Linked Files & Directories (Default None):
# set :linked_files, %w{config/database.yml}
# set :linked_dirs,  %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'

  # after :publishing, :restart
  #
  # after :restart, :clear_cache do
  #   on roles(:web), in: :groups, limit: 3, wait: 10 do
  #     # Here we can do anything such as:
  #     # within release_path do
  #     #   execute :rake, 'cache:clear'
  #     # end
  #   end
  # end

end
