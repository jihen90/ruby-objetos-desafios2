require_relative 'carta'

class Decks
    def initialize

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
        @cards.shuffle
    end

    def take
        self.shuffle.shift(51)
    end

    def deal_out
        self.take.pop(5)
    end
end


deck = Decks.new












