# Binary guessing game where cpu tells you a number is higher or lower from 1 - 25.

# Get input 1 - 25
# Have computer give me a random number
# Inform cpu if number is higher or lower
# Change the range accordingly, get a new guess
# 	-repeat until answer is given

def init
	system "clear"
	@range = [*1..25]
	puts "Choose a number between 1 and 25"
	sleep(2)
	game
end

def guessing(acc, guess)
	if acc.downcase.slice(0) == 'h'
		@range = @range.drop_while { |x| x < guess+1 }
		print @range
		puts
		game
	elsif acc.downcase.slice(0) == 'l'
		@range.pop until @range.max == guess-1
		print @range
		puts
		game
	elsif acc.downcase.slice(0) == 'y'
		puts "computer wins with a guess of #{guess}!"
	else
		puts "That's not a valid input, try again"
		guessing(acc)
	end		
end

def game
	guess = @range.sample

	puts "Computer guessed #{guess}"

	puts "Should it guess higher or lower? Or type 'You win' if it guessed it."
	accuracy = gets.chomp
	guessing(accuracy, guess)

end

init