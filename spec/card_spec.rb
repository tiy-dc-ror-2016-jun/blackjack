require "./card"

describe Card do
  describe "when non-face cards" do
    subject(:card) { Card.new("hearts", "8") }

    it "has a suit" do
      expect(card.suit).to eq "hearts"
    end

    it "has a value" do
      expect(card.value).to eq 8
    end
  end

  describe "when king" do
    subject(:card) { Card.new("hearts", "k") }

    it "has a value of 10" do
      expect(card.value).to eq 10
    end
  end

  describe "when ace" do
    subject(:card) { Card.new("hearts", "A") }

    it "has a value of 11" do
      expect(card.value).to eq 11
    end
  end
end
