source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


gem 'redis'

#ORM
gem 'mongoid', github: 'mongodb/mongoid'

# frontend
gem 'bootstrap-sass', '~> 3.3.6'
gem 'devise-bootstrap-views'
gem "font-awesome-rails"

#client side
gem "react_on_rails",  github: 'shakacode/react_on_rails'

#authentificate
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'oauth2'

#upload
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'

#paginate
gem 'kaminari-mongoid'

# Use Capistrano for deployment
#deploy
gem 'capistrano', '~> 3.4.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'
gem 'capistrano-rvm', github: "capistrano/rvm"
gem 'capistrano-npm'
gem 'capistrano-rails-console'
gem 'capistrano-rails-tail-log'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  #test suite
  gem 'rspec-rails'
  gem "spring-commands-rspec" #fast test bundle exec spring rspec
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'nyan-cat-formatter'

  #happy development
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  # gem 'guard-rails_best_practices', git: 'https://github.com/logankoester/guard-rails_best_practices.git'

  #developer tools
  gem "rails_best_practices"
  gem "better_errors" #analize your code
  gem 'meta_request' #see the request in web browser https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg
  gem 'overcommit' #tool to anable if you pass all test you can push
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'therubyracer', platforms: :ruby
