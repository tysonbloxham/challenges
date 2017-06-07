# Make who wants to be a millionaire!

# Make a 4 question quiz and do it in the show format

# Introduce the show

# Tell them how much money is on the line for the first question

# Display the answers and ask them to pick one

# If they get it right then move on and repeat until all questions are asked.

# If they get it wrong then thank them for playing. and exit the program

# If the get to the end of the game and win, then celebrate.

@money = 0

def intro
	system "clear"
	puts "Welcome to Who Wants to be a Millionaire! Are you ready to play? Yes or no?"
	starter = gets.chomp.downcase
	if starter == "yes"
		system "clear"
		question1
	elsif starter == "no"
		system "clear"
		puts "Well, get prepared and then come back later"
	else
		system "clear"
		puts "That's not a valid answer."
		intro
	end
end

def question1
	puts "For $#{@money + 250000}: What year did Borderlands 2 come out?"
	puts "A) 2012"
	puts "B) 2008"
	puts "C) 2014"
	puts "D) 2002"

	answer = gets.chomp.downcase
	case answer
	when "a"
		system "clear"
		puts "Correct!"
		sleep(1)
		system "clear"
		@money += 250000
		question2
	when "b", "c", "d"
		system "clear"
		puts "That's incorrect. You've lost $#{@money}. Thank you for playing."
	else
		system "clear"
		puts "That's not a valid answer."
		question1
	end
end

def question2
	puts "For $#{@money + 250000}: Who is the most powerful Siren in Borderlands?"
	puts "A) Tina"
	puts "B) Maya"
	puts "C) Lilith"
	puts "D) Moxxi"

	answer = gets.chomp.downcase
	case answer
	when "c"
		system "clear"
		puts "Correct!"
		sleep(1)
		system "clear"
		@money += 250000
		question3
	when "a", "b", "d"
		system "clear"
		puts "That's incorrect. You've lost $#{@money}. Thank you for playing."
	else 
		system "clear"
		puts "That's not a valid answer."
		question2
	end
end

def question3
	puts "For $#{@money + 250000}: What was the very first raid boss they created in Borderlands 2?"
	puts "A) Terramorphus"
	puts "B) Voracidous"
	puts "C) Hyperious"
	puts "D) Ancient Dragons of Destruction"

	answer = gets.chomp.downcase
	case answer
	when "a"
		system "clear"
		puts "Correct!"
		sleep(1)
		system "clear"
		@money += 250000
		question4
	when "b", "c", "d"
		system "clear"
		puts "That's incorrect. You've lost $#{@money}. Thank you for playing."
	else 
		system "clear"
		puts "That's not a valid answer."
		question3
	end
end

def question4
	puts "For $#{@money + 250000}: What boss has the highest chance of dropping the Unkempt Harold pistol?"
	puts "A) The Warrior"
	puts "B) Boom Bewm"
	puts "C) Handsome Jack"
	puts "D) Savage Lee"

	answer = gets.chomp.downcase
	case answer
	when "d"
		system "clear"
		puts "Correct!"
		sleep(1)
		system "clear"
		@money += 250000
		final
	when "a", "b", "c"
		system "clear"
		puts "That's incorrect. You've lost $#{@money}. Thank you for playing."
	else 
		system "clear"
		puts "That's not a valid answer."
		question4
	end
end

def final
	system "clear"
	puts "You've made it through all the questions! You win $#{@money}!"
end

intro