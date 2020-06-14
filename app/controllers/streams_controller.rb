# frozen_string_literal: true

#
# Streams API Controller
#

class StreamsController < ApplicationController
  def initialize(params)
    super(params)

    file = File.open(File.join(File.dirname(__FILE__), "../../data/seedFile.json"))
    @streams = JSON.load file
    file.close
  end

  get '/streams' do
    json(@streams)
  end
end
