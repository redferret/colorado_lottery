class Contestant
  attr_reader :first_name, :last_name, :age, :state_of_residence, :spending_money

  def initialize(attrs)
    @first_name = attrs[:first_name]
    @last_name = attrs[:last_name]
    @age = attrs[:age]
    @state_of_residence = attrs[:state_of_residence]
    @spending_money = attrs[:spending_money]
  end
end
