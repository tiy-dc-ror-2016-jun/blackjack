require "./deck"
describe Deck do
  subject(:deck) { Deck.new }
  let(:deck_two) { Deck.new }

  it "can be made" do
    # Example of stubing
    # expect(deck).to receive(:cards).with(args).and_return([])
    expect(deck.cards.length).to eq 52
  end

  it "is made twice, does not have the same card first" do
    expect(deck.cards.first).to_not equal deck_two.cards.first
  end
end
