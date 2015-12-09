#git repository of the code
set :repository_url,"git@github.com:jayanthi20/digitSum.git"

#branch to be deployed on the server
set :git_branch, "master"

#name of the application to be deployed
set :application_name, "digitSum"

#name of the server
set :server_name , "dev.cherrywork.in"

#user name in server
set :user_name, "ubuntu"

#pem file for ssh connection
set :pem_file , "/home/jay/cwdev.pem"