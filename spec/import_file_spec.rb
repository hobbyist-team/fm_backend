# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe Models::ImportFile do
  subject(:action) { described_class() }
  it 'returns each record from method' do
    result = action.insert_to_dynamo_db
    expect(result).not_to be_empty
    expect(result[0].keys).to match_array(["id", "title", "imageUrl","frequency","url"])
  end
end
