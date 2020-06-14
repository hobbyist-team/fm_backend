# frozen_string_literal: true

#
# Streams model. Holds an array of streams.
#
class Streams
  def self.data
    JSON.parse(
      File.read(File.join(File.dirname(__FILE__), '../../data/seedFile.json'))
    )
  end

  def self.all
    data.map do |item|
      Stream.new(item['id'], item['title'], item['imageUrl'], item['frequency'])
    end
  end
end
