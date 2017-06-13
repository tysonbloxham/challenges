# The computer has chosen a number between 1 and 25. Enter your guess and the computer will tell you higher or lower until you guess it.

computer = (1..25).to_a
@choice = computer.sample

puts "Choose a number between 1 and 25."
def game
	puts "What's your guess?"
	guess = gets.chomp.to_i
	if guess > @choice
		puts "Lower."
		game
	elsif guess < @choice
		puts "Higher."
		game
	else
		puts "That's correct!"
	end		
end

game