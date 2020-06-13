# frozen_string_literal: true

#
# This file is used by Rack-based servers to start the application.
#
# require 'rack/protection'
require_relative 'config/environment'

# use Rack::Protection
use StreamsController
run ApplicationController
