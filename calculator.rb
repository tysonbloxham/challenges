# Ask the user for a number 1 to 25.

# Then ask them for add or multiply.

# Add or multiply all the numbers from one up to the other.

puts "Please provide a number between 1 and 25."
target = gets.chomp.to_i

puts "Would you like to add or multiply?"
action = gets.chomp.downcase.strip

case action
when "add"
	final = (1..target).inject(:+)
when "multiply"
	final = (1..target).inject(:*)
end

puts final