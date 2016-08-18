# This defines a class, a factory of objects
class Card
  attr_reader :suit, :number
  def initialize(suit, number)
    # puts number + suit
    @number = number.downcase
    @suit = suit
  end

  def value
    return 10 if ["k", "q", "j"].include?(@number)
    return 11 if @number == "a"
    @number.to_i
  end

  def ==(other)
    self.number == other.number && self.suit == other.suit
  end
end
