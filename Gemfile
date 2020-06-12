# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rubocop', '~> 0.85.0'                    # linters, tidy your code-up
gem 'sinatra', '~> 2.0', '>= 2.0.8.1'         # basic frame-work to run application
gem 'sinatra-contrib', '~> 2.0', '>= 2.0.8.1' # helps us to package json as an response

group :test do
  gem 'pry', '~> 0.13.1'
  gem 'rack-test'
  gem 'rspec', '~> 3.4'                       # library to test your code
end

gem 'dotenv', '~> 2.1', '>= 2.1.1', groups: %i[development test] # export .env
