# frozen_string_literal: true

#
# Streams model. Holds an array of streams.
#
class Streams
  attr_reader :streams

  def initialize(file = File.read(File.join(File.dirname(__FILE__), '../../data/seedFile.json')))
    @streams = []
    data = JSON.parse(file)
    data.each do |item|
      @streams << Stream.new(item['id'], item['title'], item['imageUrl'], item['frequency'])
    end
  end
end
