require_relative '../lib/inspire.rb'

describe Inspire do
  let(:value) { Inspire.new }

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
