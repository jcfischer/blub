set :deploy_to, "/home/user7/rails"
set :application, "blub.take-back-the-net.org"

set :user, "user7"

role :web, "user7@moria.invisible.ch"
role :app, "user7@moria.invisible.ch"
role :db,  "user7@moria.invisible.ch", :primary => true



set :use_sudo, false
set :keep_releases, 4

set :scm, :git
set :branch, "master"
set :repository, "git://github.com/jcfischer/refererenz1.git"
set :deploy_via, :remote_cache


namespace :deploy do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end