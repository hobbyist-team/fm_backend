# frozen_string_literal: true

module Models
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

    def self.update(id, params)
      new_data = data.collect! { |stream| stream['id'] == id ? update_stream(stream, params) : stream }

      save(new_data)
      new_data.detect { |item| item['id'] == id }
    end

    def self.create(stream)
      new_id = data.last['id'].to_i+1
      stream['id'] = new_id.to_s
      new_data = data.push(stream)
      save(new_data)
      new_data.detect{ |item| item['id'] == new_id.to_s }
    end

    class << self
      private

      def save(data)
        File.open(File.join(File.dirname(__FILE__), '../../data/seedFile.json'), 'w') do |f|
          f.write(data.to_json)
        end
      end

      def update_stream(stream, params)
        params.each do |key, value|
          !value.to_s.empty? && stream[key] = value
        end
        stream
      end
    end
  end
end
