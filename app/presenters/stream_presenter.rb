# frozen_string_literal: true

module Presenters
  #
  # Presenter for Streams
  #
  class StreamPresenter
    # attr_reader added - used by importFile model
    attr_reader :id, :title, :image_url, :frequency
    def self.presents(data)
      data.map do |obj|
        new(
          obj['id'],
          obj['title'],
          # front-end relies on camelCased attributes
          obj['imageUrl'],
          obj['frequency']
        )
      end
    end

    def initialize(id, title, image_url, frequency)
      @id = id
      @title = title
      @image_url = image_url # rubocop:disable Naming/VariableName
      @frequency = frequency
    end
  end
end
