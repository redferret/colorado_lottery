class Contestant
  attr_reader :first_name,
              :last_name,
              :age,
              :state_of_residence,
              :spending_money,
              :game_interests

  def initialize(attrs)
    @first_name = attrs[:first_name]
    @last_name = attrs[:last_name]
    @age = attrs[:age]
    @state_of_residence = attrs[:state_of_residence]
    @spending_money = attrs[:spending_money]
    @game_interests = []
  end

  def full_name
    return "#{@first_name} #{@last_name}"
  end

  def out_of_state?
    @state_of_residence != 'CO'
  end

  def 
end
