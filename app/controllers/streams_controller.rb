# frozen_string_literal: true

#
# Streams API Controller
#
class StreamsController < ApplicationController
  def initialize(params)
    super(params)
    @streams = Streams.new.streams
  end

  get '/streams' do
    json(@streams)
  end
end
