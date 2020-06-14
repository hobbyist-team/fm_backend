# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe StreamsController do
  let(:status) { last_response.status }
  let(:keys) { JSON.parse(last_response.body)[0].keys }
  let(:expected_keys) { %w[id title image_url frequency] }

  it 'returns streams response' do
    get '/streams'
    expect(last_response).to be_ok
    expect(keys).to eq expected_keys
    expect(status).to eq 200
  end
end
