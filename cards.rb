# Build a deck of cards. 

# Normal 52 playing card deck.

# You need to be able to draw cards and discard them and have them not be in the deck anymore.


@cards = ["ace of ♥️", "2 of ♥️", "3 of ♥️", "4 of ♥️", "5 of ♥️", "6 of ♥️", "7 of ♥️", "8 of ♥️", "9 of ♥️", "10 of ♥️", "jack of ♥️", "queen of ♥️", "king of ♥️", "ace of ♠️", "2 of ♠️", "3 of ♠️", "4 of ♠️", "5 of ♠️", "6 of ♠️", "7 of ♠️", "8 of ♠️", "9 of ♠️", "10 of ♠️", "jack of ♠️", "queen of ♠️", "king of ♠️", "ace of ♦️", "2 of ♦️", "3 of ♦️", "4 of ♦️", "5 of ♦️", "6 of ♦️", "7 of ♦️", "8 of ♦️", "9 of ♦️", "10 of ♦️", "jack of ♦️", "queen of ♦️", "king of ♦️", "ace of ♣️", "2 of ♣️", "3 of ♣️", "4 of ♣️", "5 of ♣️", "6 of ♣️", "7 of ♣️", "8 of ♣️", "9 of ♣️", "10 of ♣️", "jack of ♣️", "queen of ♣️", "king of ♣️"]

def draw
	puts "Type D to draw a card, or type S to stop."
	input = gets.chomp.downcase
	if input == "d" && @cards.length > 0
		pick = @cards.sample
		puts pick
		@cards.delete(pick)
		draw
	elsif input == "s" || @cards.length <= 0
		puts "Thanks for playing."
	else
		puts "That's not one of the options"
		draw
	end
end

draw