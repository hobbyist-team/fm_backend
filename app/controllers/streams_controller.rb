# frozen_string_literal: true

#
# Streams API Controller
#
class StreamsController < ApplicationController
  def initialize(params)
    super(params)

    file = File.read(File.join(File.dirname(__FILE__), '../../data/seedFile.json'))
    @streams = JSON.parse(file)
  end

  get '/streams' do
    json(@streams)
  end
end
