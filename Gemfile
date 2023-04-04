source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
gem 'sqlite3'
gem 'puma', '~> 4.3', '>= 4.3.12'
gem 'sass-rails', '~> 6.0', '>= 6.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'jquery-rails', '>= 4.4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7', '>= 2.7.0'
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap-sass', '3.4.0'
gem 'ethereum.rb'
gem 'eth'
gem 'versionist'
gem 'responders', '>= 3.0.0'
gem 'active_model_serializers', '>= 0.10.12'
gem "redis"
gem 'settingslogic'
gem 'sidekiq', '>= 6.2.1'
gem 'web3-eth'
gem 'money-tree', '~> 0.10.0'
gem 'dotenv'
gem 'dotenv-deployment', require: 'dotenv/deployment'
gem 'pg'
gem 'unicorn'
gem 'will_paginate'
gem 'redis-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
end

group :development do
  gem 'web-console', '>= 3.6.2'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano3-unicorn', require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano-sidekiq', require: false
end

group :test do
  gem 'fabrication'
  gem 'ffaker'
  gem 'json_spec'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
