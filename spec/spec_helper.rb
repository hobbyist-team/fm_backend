# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require 'rack/test'
require 'rspec'
require 'pry'

require_relative '../config/environment'
require_relative '../app/controllers/application_controller'

set :environment, :test
set :port, 4567

module RSpecMixin
  include Rack::Test::Methods

  def app
    # Sinatra::Application
    # MySinatraApp
    Rack::Builder.parse_file('config.ru').first
  end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }
