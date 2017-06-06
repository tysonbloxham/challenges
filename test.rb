def whats_your_name
	puts "What's your first name?"
	first_name = gets.chomp
	puts "That's great, but what's your last name?"
	last_name = gets.chomp
	puts "Your name is #{first_name} #{last_name}."
end

whats_your_name