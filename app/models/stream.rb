# frozen_string_literal: true

#
# Streams model.
#
class Stream
  def self.data
    JSON.parse(
      File.read(File.join(File.dirname(__FILE__), '../../data/seedFile.json'))
    )
  end

  def self.all
    data
  end
end
