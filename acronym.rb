# Accept a sentence input from the user. 

# Return a capitalized acronym of the sentence.

# Unidentified flying object
# UFO


puts "What would you like the acronym for?"
sentence = gets.chomp

acronym = sentence.split(" ")
final = []

acronym.each do |x|
	if x != "of" && x != "the" && x != "a"
		final << x[0].upcase
	end
end

puts final.join