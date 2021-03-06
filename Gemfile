source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'github_api'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~>3.2.0'
gem 'cancancan', '~>2.0'
gem 'jquery-rails'
gem 'json'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'
gem 'rest-client'
group :production do
  gem 'lograge'
  gem 'logstash-event'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'factory_bot_rails'
  gem 'forgery', '0.6.0'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  # gem 'web-console', '>= 3.3.0'
  #  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'guard'
  gem 'guard-rspec'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Because style
  gem 'argon-rubocop', git: 'https://github.com/planetargon/argon-rubocop', require: false
end
group :test do
  gem 'database_cleaner', '~> 1.5'
  gem 'shoulda-matchers', '~> 3.0', require: false
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
