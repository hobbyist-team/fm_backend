# frozen_string_literal: true

#
# This environment is called in config.ru
#

require 'bundler'
Bundler.require

set :environment, ENV['APP_ENV']

require_rel './initializers'
require_rel '../app'
