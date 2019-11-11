class Deck
    attr_accessor :cards

    def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards = []

    ranks.each { |rank|
    suits.each { |suit|
        @cards << Card.new(suit, rank)
     }
    }
    @cards
    end

    def choose_card
        @cards.delete(@cards.sample)
    end

end

class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end
