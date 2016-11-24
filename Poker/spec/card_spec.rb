require 'card'

describe Card do
  subject(:card) {Card.new(5, :spade)}

  context "#initialize" do
    it "sets the value of card" do
      expect(card.value).to eq(5)
    end
    it "sets the suit of card" do
      expect(card.suit).to eq(:spade)
    end
  end
end
