source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 7.1.0'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
gem 'jquery-rails', '>= 4.3.4'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.8', '>= 2.8.0'
gem 'bootstrap', '~> 4.1.3'
gem 'bootstrap-sass', '2.3.2.0'
gem 'ethereum.rb', '>= 2.3'
gem 'eth', '>= 0.4.10'
gem 'versionist', '>= 2.0.0'
gem 'responders', '>= 3.0.0'
gem 'active_model_serializers', '>= 0.10.14'
gem "redis"
gem 'settingslogic'
gem 'sidekiq'
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
  gem 'rspec-rails', '>= 3.8.1'
end

group :development do
  gem 'web-console', '>= 3.7.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '>= 3.11.1', require: false
  gem 'capistrano-bundler', '>= 1.4.0', require: false
  gem 'capistrano-rails', '>= 1.5.0', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano3-unicorn', require: false
  gem 'capistrano-rails-console', require: false
  gem 'capistrano-sidekiq', '>= 2.0.0', require: false
end

group :test do
  gem 'fabrication'
  gem 'ffaker'
  gem 'json_spec'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '>= 3.1.3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
