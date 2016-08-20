desc "deploy using capistrano"
task deploy: :environment do
  system("bundle exec cap production setup") #capistrano-figaro-yml
  system("cap production deploy")
end
