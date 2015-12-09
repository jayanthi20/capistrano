require_relative "../configurationfile"

set :application, "#{fetch(:application_name)}"
set :repo_url, "#{fetch(:repository_url)}"
set :branch, "#{fetch(:git_branch)}"



namespace :deploy do

  desc 'Start application'

  task :start do

    on roles(:app) do

      within release_path do

 execute "screen","-dm","-S","#{fetch(:application)}","npm","start"
       end

    end

  end

    task :npminstall do

 on roles(:app) do

 within release_path do

 execute "sudo","npm", "install"

 end

 end

  end

task :test do

    on roles(:app) do

      within release_path do

        execute "sudo",   "npm", "test"

      end

    end

  end

  after :publishing, :npminstall

  after :npminstall, :test

  after :test, :start
  

end
