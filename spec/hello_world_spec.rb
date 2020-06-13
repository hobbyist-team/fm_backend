# frozen_string_literal: true

require File.expand_path 'spec_helper.rb', __dir__

describe 'hello world' do
  let(:status) { last_response.status }
  let(:body) { JSON.parse(last_response.body) }
  let(:expected_body) { { 'about' => 'Welcome to FM service!', 'environment' => 'test' } }

  it 'should return hello world api response' do
    get '/'
    expect(last_response).to be_ok
    expect(body).to eq expected_body
    expect(status).to eq 200
  end
end
