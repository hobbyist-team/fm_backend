# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

#
# MyApp class is inherited by ApplicationController.
# Keeping the registry at initializers to keep configurations isolated.
#
class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
end
