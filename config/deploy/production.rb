set :stage, :production

server '0.0.0.0', user: 'deploy', roles: %w{web app}
