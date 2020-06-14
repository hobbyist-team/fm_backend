# frozen_string_literal: true

#
# Stream model
#
class Stream
  def initialize(id, title, image_url, frequency)
    @id = id
    @title = title
    @image_url = image_url
    @frequency = frequency
  end
end
