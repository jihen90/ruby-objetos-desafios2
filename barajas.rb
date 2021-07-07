require_relative 'carta'

class Decks
    attr_reader :cards, :ey
    def initialize
        @ey = ey
        @cards = []
        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        kinds = ['C','D','T','E']
        
        kinds.each do |kind|
            numbers.each do |number|
                card = Card.new(number, kind)
                @cards << card
            end
        end

    end

    def shuffle
        @ey = self.cards.shuffle
    end

    def take
        self.ey.pop
    end

    def deal_out
        self.ey.pop(5)
    end
end


deck = Decks.new

pp deck.shuffle
pp "------"
pp deck.take
pp "------"
pp deck.deal_out










