namespace :setup do

  desc "Upload db file."
  task :upload_db do
    on roles(:app) do
      run_locally do
          execute "mongodump --db m101"
          execute "scp  #{fetch(:app)}"
        end
        within release_path do
      
        end
    end
  end

end



