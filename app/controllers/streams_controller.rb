# frozen_string_literal: true

#
# Streams API Controller
#
class StreamsController < ApplicationController
  get '/streams' do
    json ::Presenters::StreamPresenter.presents(::Models::Stream.all)
  end

  patch '/streams/:id' do
    has_valid_body = %w[title imageUrl frequency].any? { |key| params[key].present? }

    unless has_valid_body
      status 400
      body 'Invalid request. No update attributes provided in the request body.'
    end

    json ::Models::Stream.update(params[:id], params.reject { |key| key == 'id' })
  end
end
