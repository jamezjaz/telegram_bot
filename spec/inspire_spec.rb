require_relative '../lib/inspire.rb'

describe Inspire do
  let(:value) { Inspire.new }
  describe '#message_request' do
    let(:json_request) { value.message_request }

    it 'returns a JSON response if request is successful' do
      expect(json_request.class).to eql(Array)
    end

    it 'returns "should not be empty" if it is empty' do
      expect(json_request.length).not_to be_nil
    end
  end

  describe '#select_randomly' do
    let(:random) { value.select_randomly }

    it 'returns a Hash' do
      expect(random.class).to be(Hash)
    end

    it 'returns a key and a value' do
      expect(random.length).not_to be(0)
    end
  end
end
