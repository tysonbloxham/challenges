module Things
	class WordBank
		def initialize
			@color	= "red"
			@superlative = "best"
			@adjective	= "large"
			@body_parts = "legs"
			@body_part = "head"
			@noun = "boat"
			@animals = "cows"	
			@adjective2 = "mighty"
			@adjective3 = "frightening"
			@adjective4 = "careful"
		end

		def getting_words
			puts "Please write a color:"
			@color = gets.chomp

			puts "Please write a superlative:"
			@superlative = gets.chomp

			puts "Please write an adjective:"
			@adjective = gets.chomp

			puts "Please write a body part (plural):"
			@body_parts = gets.chomp

			puts "Please write a body part:"
			@body_part = gets.chomp

			puts "Please write a noun:"
			@noun = gets.chomp

			puts "Please write an animal:"
			@animals = gets.chomp

			puts "Please write an adjective:"
			@adjective2 = gets.chomp

			puts "Please write an adjective:"
			@adjective3 = gets.chomp

			puts "Please write an adjective:"
			@adjective4 = gets.chomp
		end
	end
end




# color	
# superlative (ending is "est")	
# adjective	
# body part (plural)	
# body part	
# noun	
# animal (plural)	
# adjective	
# adjective	
# adjective