require 'rspec'
require './lib/game'

describe Game do
  before :each do
    @game = Game.new('Pick 4', 2)
  end
  context '#initialize' do
    it 'creates instance' do
      expect(@game).to be_instance_of Game
    end
  end
end
