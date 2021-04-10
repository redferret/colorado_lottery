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
    it 'has a name' do
      expect(@game.name).to eq 'Pick 4'
    end
    it 'has a cost' do
      expect(@game.cost).to eq 2
    end
  end

  context '#national_drawing?' do
    it 'is not a national drawing by default' do
      expect(@game.national_drawing?).to eq false
    end
    it 'is a national drawing' do
      game = Game.new('Pick 4', 3, true)
      expect(game.national_drawing?).to eq true
    end
  end
end
