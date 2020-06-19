# frozen_string_literal: true

module Models
  #
  # ImportFile read json file and insert to dynamo db
  #
  class ImportFile
    def self.insert_to_dynamo_db
      data = ::Presenters::StreamPresenter.presents(::Models::Stream.all)
      data.each do |item|
        # add a new method that will insert the record to the dynamo db
        puts "id #{item.id} title #{item.title} imageUrl #{item.imageUrl} frequency #{item.frequency}"
      end
    end
  end
end
