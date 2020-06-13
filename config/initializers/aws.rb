# frozen_string_literal: true

Dynamoid.configure do |config|
  config.access_key = ENV['aws_access_key_id']
  config.secret_key = ENV['aws_secret_access_key']
  config.region = ENV['aws_region']
end
