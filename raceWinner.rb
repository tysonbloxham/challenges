# You are that one race guy that sees who finished fastest as runners finish.

# Write a program that when you enter a new race finish time it updates a top 5 finishers list.

@winners = {
	"Voltron" => 10
}

def program
	puts "Who is the person who just finished the race? Or type exit to view the scoreboard if the race is over."
	name = gets.chomp.strip
	if name == "exit"
		scoreboard
		return
	else
		puts "How many minutes did it take them to finish?"
		time = gets.chomp.to_i
		@winners[name] = time
		program
	end
end


def scoreboard
	@winners = @winners.sort_by { |key, value| value }
	i = 1
	@winners.each do |key, value|
		puts "#{i}: #{key} in #{value} minutes"
		i += 1
		break if i > 5
	end
end

program