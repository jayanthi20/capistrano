namespace :setup do

  desc "Upload db file."
  task :upload_db do
    on roles(:app) do
        within release_path do
        execute "mongo","test","test.js"
        end
    end
  end

end



