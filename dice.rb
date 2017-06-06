# Create a game where you roll 1 die and the computer rolls 1 die and you see whos is greater.

# On a tie roll again.

# Play to 5 victories.

# Ask to play again.

@win_count = 0
@games_played = 0
@loss_count = 0

def ask
	puts "Type r to roll the die"
	input = gets.chomp.downcase
	if input == "r"
		@games_played += 1
		challenge
	end
end

def challenge 
	player_roll = rand(1..6)
	comp_roll = rand(1..6)
	if player_roll == comp_roll
		puts "You rolled a #{player_roll}"
		puts "The computer rolled a #{comp_roll}"
		puts "It's a tie!"
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		ask
	elsif player_roll > comp_roll
		puts "You rolled a #{player_roll}"
		puts "The computer rolled a #{comp_roll}"
		puts "You win!"
		@win_count += 1
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		if @win_count >= 5
			puts "You've beaten the computer! Game Over!"
			puts "Would you like to play again? Yes or no?"
			replay = gets.chomp.downcase
			if replay == "yes"
				@win_count = 0
				@games_played = 0
				@loss_count = 0
				ask
			else
				return		
			end
		else
			ask					
		end
	elsif player_roll < comp_roll
		puts "You rolled a #{player_roll}"
		puts "The computer rolled a #{comp_roll}"
		puts "You lose!"
		@loss_count += 1
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		if @loss_count >= 5
			puts "You've lost to the computer! Game Over!"
			puts "Would you like to play again? Yes or no?"
			replay = gets.chomp.downcase
			if replay == "yes"
				@win_count = 0
				@games_played = 0
				@loss_count = 0
				ask
			else
				return		
			end
		else
			ask					
		end
	end
end

ask

# puts "Would you like to play again? Yes or no?"
# replay = gets.chomp.downcase
# if replay == "yes"
# 	@win_count = 0
# 	@games_played = 0
# 	@loss_count = 0
# 	ask
# else
# 	return		
# end


# x.sample takes a random sample from your array