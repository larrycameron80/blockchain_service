source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.7'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'jquery-rails', '>= 4.3.3'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', '~> 4.1.3'
gem 'bootstrap-sass', '2.3.2.0'
gem 'ethereum.rb'
gem 'eth'
gem 'versionist', '>= 1.7.0'
gem 'responders', '>= 2.4.0'
gem 'active_model_serializers', '>= 0.10.7'
gem "redis"
gem 'settingslogic'
gem 'sidekiq', '>= 5.2.1'
gem 'web3-eth'
gem 'money-tree', '~> 0.10.0'
gem 'dotenv'
gem 'dotenv-deployment', require: 'dotenv/deployment'
gem 'pg'
gem 'unicorn'
gem 'will_paginate'
gem 'redis-rails', '>= 5.0.2'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '>= 3.8.0'
end

group :development do
  gem 'web-console', '>= 3.6.2'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano3-unicorn', require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano-sidekiq', '>= 1.0.2', require: false
end

group :test do
  gem 'fabrication'
  gem 'ffaker'
  gem 'json_spec'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
