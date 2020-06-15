# frozen_string_literal: true

module Presenters
  #
  # Presenter for Streams
  #
  class StreamPresenter
    def self.presents(data)
      data.map do |obj|
        new(
          obj['id'],
          obj['title'],
          obj['image_url'],
          obj['frequency']
        )
      end
    end

    def initialize(id, title, image_url, frequency)
      @id = id
      @title = title
      @image_url = image_url
      @frequency = frequency
    end
  end
end
