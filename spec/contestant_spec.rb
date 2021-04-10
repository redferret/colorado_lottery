require 'rspec'
require './lib/contestant'

describe Contestant do
  before :each do
    @contestant = Contestant.new({
      first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10
    })
  end
  context '#initialize' do
    it 'exists' do
      expect(@contestant).to be_instance_of Contestant
    end
    it 'has a first and last name' do
      expect(@contestant.first_name).to eq "Alexander"
      expect(@contestant.last_name).to eq "Aigiades"
    end
    it 'has an age' do
      expect(@contestant.age).to eq 28
    end
    it 'has a state of residence' do
      expect(@contestant.state_of_residence).to eq "CO"
    end
    it 'has money to spend' do
      expect(@contestant.spending_money).to eq 10
    end
  end

  context '#full_name' do
    it 'shows full name' do
      expect(@contestant.full_name).to eq "Alexander Aigiades"
    end
  end

  context '#out_of_state?' do
    it 'returns true if out of state' do
      expect(@contestant.out_of_state?).to eq false
    end
  end

  context '#add_game_interest #game_interests' do
    it 'has game_interests' do
      expect(@contestant.game_interests).to eq []
    end
    it 'shows the game interests' do
      expected_interests = ['Mega Millions', 'Pick 4']
      @contestant.add_game_interest('Mega Millions')
      @contestant.add_game_interest('Pick 4')
      expect(@contestant.game_interests).to eq expected_interests
    end
  end
end
