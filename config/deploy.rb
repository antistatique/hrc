# config valid only for Capistrano 3.1
lock '3.2.1'

set :user, 'hrc'
set :host, 'antistatique.alwaysdata.net'
set :home, '/home/hrc'

role :app, %w{hrc@antistatique.alwaysdata.net}
role :web, %w{hrc@antistatique.alwaysdata.net}
role :db,  %w{hrc@antistatique.alwaysdata.net}

server 'antistatique.alwaysdata.net'

set :repo_url, 'git@github.com:antistatique/hrc.git'

set :deploy_via, :remote_cache
set :copy_exclude, [".git", ".DS_Store", ".gitignore", ".gitmodules"]
set :scm, :git
set :use_sudo, false
set :log_level, :info

set :keep_releases, 5



