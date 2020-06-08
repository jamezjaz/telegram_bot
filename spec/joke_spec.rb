require_relative '../lib/joke.rb'

describe Joke do
  describe '#message_request' do
    let(:value) { Joke.new }
    let(:json_request) { value.message_request }

    it 'returns a Hash response if request is successful' do
      expect(json_request.class).to eql(Hash)
    end

    it 'if it is empty, returns a response "should not be empty"' do
      expect(json_request.length).not_to be_nil
    end
  end
end
