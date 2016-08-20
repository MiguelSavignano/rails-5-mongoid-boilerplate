desc "rename rails app name"
task rename_app: :environment do
  require 'yaml'
  app = YAML.load_file('application.yml')
  app_name = app["app_name"] || "MyApp"
  paths = %W[
    ./app/views/layouts/application.html.erb
    ./config/application.rb
    ./config/environments/production.rb
    ./config/initializers/session_store.rb
   ]
   paths.each do |path|
     str = IO.read(path)
     str.gsub!(/MyApp/, app_name)
     File.open(path, 'w') do |file|
       file.write(str)
     end
   end
end
