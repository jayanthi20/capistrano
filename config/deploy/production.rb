require_relative "../../configurationfile"

server "#{fetch(:server_name)}", user: "#{fetch(:user_name)}", roles: %w{app}

set :role_path, "#{fetch(:user_name)}@#{fetch(:server_name)}"

role :app, %w{"#{fetch(:role_path)}

set :deploy_to, "/home/#{fetch(:user_name)}/test/#{fetch(:application)}"

set :tty, true

set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["#{fetch(:pem_file)}"]
}