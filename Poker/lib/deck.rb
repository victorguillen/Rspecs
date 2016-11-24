require 'card'

class Deck

  attr_reader :deck

  def initialize
    @deck = Deck.populate
  end

  def self.populate
    deck_temp = []
    13.times {|i| deck_temp << Card.new(i + 1, :spade)}
    13.times {|i| deck_temp << Card.new(i + 1, :heart)}
    13.times {|i| deck_temp << Card.new(i + 1, :diamond)}
    13.times {|i| deck_temp << Card.new(i + 1, :club)}
    deck_temp.shuffle
  end
end
