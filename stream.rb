# frozen_string_literal: true

require_relative './config/initializers/aws'

#
# Stream Model
#
class Stream
  include Dynamoid::Document

  table name: :streams, key: :id, read_capacity: 5, write_capacity: 5
end
