# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe StreamsController do
  let(:status) { last_response.status }
  let(:keys) { JSON.parse(last_response.body)[0].keys }
  let(:expected_keys) { %w[id title imageUrl frequency] }

  before(:each) do
    mock_data = {
      'id' => '2',
      'imageUrl' => 'http://after-update/mock.png',
      'title' => 'http://before-update/mock.png',
      'frequency' => 'mock_frequency'
    }

    allow(::Models::Stream).to receive(:data).and_return([mock_data])
    allow(::Models::Stream).to receive(:save)
  end

  it 'returns streams response' do
    get '/streams'
    expect(last_response).to be_ok
    expect(keys).to match_array expected_keys
    expect(status).to eq 200
  end

  context 'with update' do
    it 'updates the stream' do
      request_mock_data = {
        'id' => '2',
        'imageUrl' => 'http://after-update/mock.png'
      }

      patch '/streams/2', request_mock_data

      expect(last_response).to be_ok
      expect(status).to eq 200
      expect(JSON.parse(last_response.body)['imageUrl']).to match 'http://after-update/mock.png'
    end

    it 'returns a 400 error' do
      request_mock_data = {
        'id' => '2'
      }

      patch '/streams/2', request_mock_data

      expect(status).to eq 400
    end
  end

  context 'with add' do
    it 'returns a 400 error when all keys present' do
      request_mock_data = {
        'title' => 'new_fm'
      }

      post '/streams', body: request_mock_data.to_json
      
      expect(status).to eq 400
    end

    it 'adds new fm' do
      request_mock_data = {
        'title' => 'new_fm',
        'url' => 'http://new-fm',
        'imageUrl' => 'http://new-fm.png',
        'frequency' => '100'
      }
      post '/streams', body: request_mock_data.to_json

      expect(status).to eq 501
    end
  end
end
