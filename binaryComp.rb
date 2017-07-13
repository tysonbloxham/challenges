# Binary guessing game where cpu tells you a number is higher or lower from 1 - 25.

# Get input 1 - 25
# Have computer give me a random number
# Inform cpu if number is higher or lower
# Change the range accordingly, get a new guess
# 	-repeat until answer is given
def initialize
	@range = [*1..25]
	puts "Choose a number between 1 and 25"
	sleep(2)
	game
end

def game
	guess = @range.sample

	puts "Computer guessed #{guess}"

	puts "Should it guess higher or lower? Or type 'You win' if it guessed it."
	accuracy = gets.chomp

	if accuracy == 'higher'
		@range = @range.drop_while { |x| x < guess+1 }
		print @range
		puts
		game
	elsif accuracy == 'lower'
		@range.pop until @range.max == guess-1
		print @range
		puts
		game
	else
		puts "computer wins with a guess of #{guess}!"
	end		
end

initialize