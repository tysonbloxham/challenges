# You guys now take bets for a horse race.

# Take bids from people and then give the pay out to the winner.

# Create four @horses.

# Accept bets to which will win.

# Randomly choose a horse to win and pay out to the winner.

@seabisque = {"Tyson" => 200
}
@bojack = {"JC" => 300
}
@todd = {"Director" => 1000
}
@secretary = {"Natalie" => 50
}

@horses = [@seabisque, @bojack, @todd, @secretary]

@pot = 0

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

def winnings
	@horses.each do |horse|
		horse.each_value do |x|
			@pot += x
			puts @pot
		end
	end
end


def game
	winner = @horses.sample
	case winner
	when @seabisque
		winnings
		@seabisque.each do |person, money|
			puts "#{person} has won $#{@pot / @seabisque.length}"
		end
	when @bojack
		winnings
		@bojack.each do |person, money|
			puts "#{person} has won $#{@pot / @bojack.length}"
		end
	when @todd
		winnings
		@todd.each do |person, money|
			puts "#{person} has won $#{@pot / @todd.length}"
		end
	when @secretary
		winnings
		@secretary.each do |person, money|
			puts "#{person} has won $#{@pot / @secretary.length}"
		end
	end
end

start

# Next feature to implement:
# Each person's bet makes up a percentage of the bet for each horse. This gets calculated for each person for their horse and then gets assigned to the hashes in place of their actual bet amount after the total for the pot is added. Then in the game after the winner is announced, the person's percentage gets multiplied by the total winnings accross all horses.