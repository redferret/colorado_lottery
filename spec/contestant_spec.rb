require 'rspec'
require './lib/contestant'

describe Contestant do
  context '#initialize' do
    it 'exists' do
      contestant = Contestant.new
      expect(contestant).to be_instance_of Contestant
    end
  end
end
