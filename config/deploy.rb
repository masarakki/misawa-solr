require 'capistrano_colors'
set :application, "misawa-solr"
set :repository,  "git://github.com/masarakki/misawa-solr.git"

set :scm, :git
set :user, 'masaki'
set :deploy_to, "~/#{application}"
set :use_sudo, false
set :default_run_options, :pty => true
role :web, "misawa-solr.np-complete-doj.in"
role :app, "misawa-solr.np-complete-doj.in"
role :db,  "misawa-solr.np-complete-doj.in", :primary => true

