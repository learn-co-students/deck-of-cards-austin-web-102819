class Deck

    attr_accessor :cards

    def initialize()
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        cards = suit.product(rank)
        @cards = cards.map{|card| Card.new(card[0], card[1])}
    end

    def choose_card
        cards.delete(cards.sample)
    end

end

class Card
    
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end