source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'aws-sdk-s3', require: false
gem 'bootsnap', '>= 1.4.8', require: false
gem 'bootstrap', '>= 4.5.2'
gem 'coffee-rails', '~> 5.0.0'
gem 'devise'
gem 'haml'
gem 'haml-rails'
gem 'jbuilder', '~> 2.10.1'
gem 'jquery-rails'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4.3'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'sassc-rails', '~> 2.1.2'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard'
  gem 'guard-minitest'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
