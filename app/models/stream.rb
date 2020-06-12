# frozen_string_literal: true

module Models
  #
  # Stream Model
  #
  class Stream
    include Dynamoid::Document

    table name: :dynamoid_streams, key: :id, read_capacity: 5, write_capacity: 5

    field :id, :string
    field :created_at, :string
  end
end
