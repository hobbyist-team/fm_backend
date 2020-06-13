# frozen_string_literal: true

#
# Main Controller. Only config and root path should be here.
#
class ApplicationController < MyApp
  # configure do
  #   set :session_secret, 'password_security'
  # end

  get '/' do
    json(
      about: 'Welcome to FM service!',
      environment: settings.environment.to_s
    )
  end
end
