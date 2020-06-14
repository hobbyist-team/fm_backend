# frozen_string_literal: true

#
# Streams API Controller
#
class StreamsController < ApplicationController
  get '/streams' do
    json(::Streams.all)
  end
end
