# Create a game where you roll 1 die and the computer rolls 1 die and you see whose is greater.

# On a tie roll again.

# Play to 5 victories.

# Ask to play again.

# _____________________________________________________

# Ask how many games to play

# Ask how many dice to roll

@win_count = 0
@games_played = 0
@loss_count = 0
@count_choice = 1
@dice_count = 1

def starter 
	puts "How many games do you want to play?"
	@count_choice = gets.chomp.to_i
	puts "How many dice do you want to roll?"
	@dice_count = gets.chomp.to_i
	ask
end

def ask
	puts "Type r to roll the die"
	input = gets.chomp.downcase
	if input == "r"
		@games_played += 1
		challenge
	end
end

def challenge
	player_roll = []
	1.upto(@dice_count) do
		player_roll << rand(1..6)
	end
	player_total = 0
	player_roll.each do |x|
		player_total += x
	end
	comp_roll = []
	1.upto(@dice_count) do
		comp_roll << rand(1..6)
	end
	comp_total = 0
	comp_roll.each do |x|
		comp_total += x
	end
	if player_total == comp_total
		puts "You rolled #{player_total}"
		puts "The computer rolled #{comp_total}"
		puts "It's a tie!"
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		ask
	elsif player_total > comp_total
		puts "You rolled #{player_total}"
		puts "The computer rolled #{comp_total}"
		puts "You win!"
		@win_count += 1
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		if @win_count >= @count_choice
			puts "You've beaten the computer! Game Over!"
			puts "Would you like to play again? Yes or no?"
			replay = gets.chomp.downcase
			if replay == "yes"
				@win_count = 0
				@games_played = 0
				@loss_count = 0
				starter
			else
				return		
			end
		else
			ask					
		end
	elsif player_total < comp_total
		puts "You rolled #{player_total}"
		puts "The computer rolled #{comp_total}"
		puts "You lose!"
		@loss_count += 1
		puts "You've won #{@win_count} of #{@games_played}, and lost #{@loss_count} of #{@games_played}"
		if @loss_count >= @count_choice
			puts "You've lost to the computer! Game Over!"
			puts "Would you like to play again? Yes or no?"
			replay = gets.chomp.downcase
			if replay == "yes"
				@win_count = 0
				@games_played = 0
				@loss_count = 0
				starter
			else
				return		
			end
		else
			ask					
		end
	end
end



starter
