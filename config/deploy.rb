require 'bundler/capistrano'
set :application, "giftnetwork"
set :repository,  "git@github.com:alechartman/giftnetwork.git"
set :user, "railsapps"
set :use_sudo, false
set :deploy_to, "/home/railsapps/public_html/#{application}"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "giftnetwork.nyconrails.com"                          # Your HTTP server, Apache/etc
role :app, "giftnetwork.nyconrails.com"                          # This may be the same as your `Web` server
role :db,  "giftnetwork.nyconrails.com", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

#RVM stuff from http://rvm.beginrescueend.com/integration/capistrano/
set :default_environment, {
  'PATH' => "/home/railsapps/.rvm/gems/ruby-1.9.2-p136/bin:/home/railsapps/.rvm/bin:/home/railsapps/.rvm/rubies/ruby-1.9.2-p136/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.9.2',
  'GEM_HOME'     => '/home/railsapps/.rvm/gems/ruby-1.9.2-p136/',
  'GEM_PATH'     => '/home/railsapps/.rvm/gems/ruby-1.9.2-p136/',
  'BUNDLE_PATH'  => '/home/railsapps/.rvm/gems/ruby-1.9.2-p136/'  # If you are using bundler.
}