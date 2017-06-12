# You guys now take bets for a horse race.

# Take bids from people and then give the pay out to the winner.

# Create four @horses.

# Accept bets to which will win.

# Randomly choose a horse to win and pay out to the winner.

@seabisque = {
}
@bojack = {
}
@todd = {
}
@secretary = {
}

@horses = [@seabisque, @bojack, @todd, @secretary]

def start
	puts "Would you like to bet? Or Play?"
	initialize = gets.chomp.downcase
	case initialize
	when "bet"
		betting
	when "play"
		game
	else
		start
	end
end

def betting
	puts "What's your name?"
	@user = gets.chomp

	puts "Which horse would you like to bet on? Seabisque, Bojack, Todd, or Secretary?"
	@choice = gets.chomp.downcase

	puts "How much would you like to bet?"
	@amount = gets.chomp.to_i

	case @choice
	when "seabisque"
		@seabisque[@user] = @amount
		puts @horses[0]
		start
	when "bojack"
		@bojack[@user] = @amount
		puts @horses[1]
		start
	when "todd"
		@todd[@user] = @amount
		puts @horses[2]
		start
	when "secretary"
		@secretary[@user] = @amount
		puts @horses[3]
		start
	else 
		puts "That's not one of the options."
		betting
	end
end

def game
	winner = @horses.sample
	case winner
	when @seabisque
		@seabisque[@user] = @amount
		puts @horses[0]
	when @bojack
		@bojack[@user] = @amount
		puts @horses[1]
	when todd
		@todd[@user] = @amount
		puts @horses[2]
	when @secretary
		@secretary[@user] = @amount
		puts @horses[3]
	else
		puts "You lost"
	end
end

start