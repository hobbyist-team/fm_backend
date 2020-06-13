# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.2'

gem 'dynamoid', '~> 3.5'                      # storage for our streams
gem 'puma', '~> 4.3', '>= 4.3.5'              # puma server to run our code base
gem 'require_all', '~> 3.0'
gem 'rubocop', '~> 0.85.0'                    # linters, tidy your code-up
gem 'sinatra', '~> 2.0', '>= 2.0.8.1'         # basic frame-work to run application
gem 'sinatra-contrib', '~> 2.0', '>= 2.0.8.1' # helps us to package json as an response
group :test do
  gem 'pry', '~> 0.13.1'
  gem 'rack-test'
  gem 'rspec', '~> 3.4'                       # library to test your code
end
