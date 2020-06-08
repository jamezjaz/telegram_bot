require_relative '../lib/inspire.rb'

describe Inspire do
    describe '#message_request' do
        let(:value) { Inspire.new }
        let(:json_request) { value.message_request }

        it 'returns a JSON response if request is successful' do
            expect(json_request.class).to eql(Array)
        end

        it 'returns "should not be empty" if it is empty' do
            expect(json_request.length).not_to be_nil
        end
    end
end