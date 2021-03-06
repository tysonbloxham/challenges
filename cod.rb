@points = 20000
@speed = 10
@rof = 100
@health = 2
@reload = 4
@power = 10
@bought = []

def buying
	puts "Which bonus would you like to buy: Stamina Up, Double Tap, Juggernog, Speed Cola, or Pack A Punch"
	drugs = gets.chomp.downcase.strip
	if drugs == "stamina up" && @points >= 2000 && !@bought.include?(drugs)
		@speed += 10
		@points -= 2000
		@bought << drugs
		buying
	elsif drugs == "double tap" && @points >= 2000 && !@bought.include?(drugs)
		@rof *= 2
		@points -= 2000
		@bought << drugs
		buying
	elsif drugs == "juggernog" && @points >= 2500 && !@bought.include?(drugs)
		@health *= 2
		@points -= 2500
		@bought << drugs
		buying
	elsif drugs == "speed cola" && @points >= 3000 && !@bought.include?(drugs)
		@reload -= 2
		@points -= 3000
		@bought << drugs
		buying
	elsif drugs == "pack a punch" && @points >= 5000 && !@bought.include?(drugs)
		@power *= 2
		@points -= 5000
		@bought << drugs
		buying
	elsif @bought.length >= 5
		puts "You've already bought all of the power ups."			
	else
		puts "You can't buy that!"
		buying
	end
end

buying