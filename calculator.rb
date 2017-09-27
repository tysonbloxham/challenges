# Ask the user for a number 1 to 25.

# Then ask them for add or multiply.

# Add or multiply all the numbers from one up to the other.

def init
	puts "Please provide a number between 1 and 25"
	target = gets.chomp.to_i
	if target <= 25 && target >= 0
		calc(target)
	else
		puts "That's not a valid input, try again."
		init
	end
end

def calc(target)
	puts "Would you like to add or multiply?"
	action = gets.chomp.downcase.strip
	case action
	when "add"
		add(target)
	when "multiply"
		multiply(target)		
	end
end

def add(limit)
	final = (1..limit).inject(:+)
	puts final	
end

def multiply(limit)
	final = (1..limit).inject(:*)
	puts final	
end

init