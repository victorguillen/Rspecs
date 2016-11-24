require 'deck'

describe Deck do
  subject(:deck_mock) {Deck.new}
  context "#initialize" do
    it "creates a deck of 52 cards" do
      expect(deck_mock.deck).to be_an(Array)
      expect(deck_mock.deck.size).to eq(52)
    end


    it "checks that each suit has 12 cards" do
      spade_counter = 0
      heart_counter = 0
      diamond_counter = 0
      clubs_counter = 0

      deck_mock.deck.each do |card|
        spade_counter += 1 if card.suit == :spade
        heart_counter += 1 if card.suit == :heart
        diamond_counter += 1 if card.suit == :diamond
        clubs_counter += 1 if card.suit == :club
      end

      expect(spade_counter).to eq(13)
      expect(heart_counter).to eq(13)
      expect(diamond_counter).to eq(13)
      expect(clubs_counter).to eq(13)

    end
    # it "checks if the deck is empty" do
    #   52.times{deck_mock.deck.pop}
    #   expect(deck_mock.deck).to be_empty
    # end
  end
end
