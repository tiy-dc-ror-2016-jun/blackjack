class Deck
  attr_reader :cards
  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []

    ["spades", "hearts", "clubs", "diamonds"].each do |suit|
      (2..10).each do |number|
        cards << Card.new(suit, number.to_s)
      end

      ["k", "q", "j", "a"].each do |face_card|
        cards << Card.new(suit, face_card)
      end
    end

    cards.shuffle
  end
end
