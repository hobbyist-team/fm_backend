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
          obj['imageUrl'],
          obj['frequency']
        )
      end
    end

    def self.update(id, params)
      ::Models::Stream.update(id, params)
    end

    def initialize(id, title, image_url, frequency)
      @id = id
      @title = title
      @imageUrl = image_url # rubocop:disable Naming/VariableName
      @frequency = frequency
    end
  end
end
