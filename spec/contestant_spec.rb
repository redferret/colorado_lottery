require 'rspec'
require './lib/contestant'

describe Contestant do
  context '#initialize' do
    before :each do
      @contestant = Contestant.new({
        first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10
      })
    end
    it 'exists' do
      expect(@contestant).to be_instance_of Contestant
    end
    it 'has a first and last name' do
      expect(@contestant.first_name).to eq "Alexander"
      expect(@contestant.first_name).to eq "Aigiades"
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
end
