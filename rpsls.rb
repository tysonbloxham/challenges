
def start
	options = ["rock", "paper", "scissors", "lizard", "spock"]
	comp_choice = options.sample

	puts "Would you like to pick rock, paper, scissors, lizard, or spock?"
	user_choice = gets.chomp.downcase
	puts user_choice == comp_choice ? "You tied!" : game(user_choice, comp_choice)
end

def game (user, comp)
	case user
	when "rock"
		puts comp == "scissors" || comp == "lizard" ? "The computer chose #{comp}, you win!" : "The computer chose #{comp}, you lose!"
	when "paper"
		puts comp == "spock" || comp == "rock" ? "The computer chose #{comp}, you win!" : "The computer chose #{comp}, you lose!"
	when "scissors"
		puts comp == "paper" || comp == "lizard" ? "The computer chose #{comp}, you win!" : "The computer chose #{comp}, you lose!"
	when "lizard"
		puts comp == "paper" || comp == "spock" ? "The computer chose #{comp}, you win!" : "The computer chose #{comp}, you lose!"
	when "spock"
		puts comp == "scissors" || comp == "rock" ? "The computer chose #{comp}, you win!" : "The computer chose #{comp}, you lose!"
	else
		puts "That's an invalid choice. Try again"
		start
	end
end

start
