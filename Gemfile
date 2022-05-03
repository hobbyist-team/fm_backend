# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.2'

gem 'dynamoid', '~> 3.5'                      # storage for our streams
gem 'puma', '~> 4.3', '>= 4.3.5'              # puma server to run our code base
gem 'rack', '~> 2.2'                          # provides a minimal, modular and adaptable interface
gem 'require_all', '~> 3.0'                   # wonderfully simple way to load your code
gem 'rubocop', '~> 0.85.0'                    # linters, tidy your code-up
gem 'sinatra', '~> 2.2'                     # basic frame-work to run application
gem 'sinatra-contrib', '~> 2.2' # helps us to package json as an response
group :test do
  gem 'pry', '~> 0.13.1'                      # runtime developer console and IRB alternative
  gem 'rack-test'                             # small, simple testing API for Rack apps
  gem 'rspec', '~> 3.4'                       # library to test your code
end
