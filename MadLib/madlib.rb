# Level One: Write a mad lib that pulls from a separate file that has a list of nouns, verbs, adjectives, pronouns, etc.

# Level Two: Get user input that writes into those files from your main file.

# Level Two Plus: make them all in different files, making them as module. Figure out how to bring them into your main Mad Lib program.


require './madWords.rb'

class Story < Things::WordBank
	def writing
		puts story = "The #{@color} Dragon is the #{@superlative} Dragon of all. It has #{@adjective} #{@body_parts}, and a #{@body_part} shaped like a #{@noun}. It loves to eat #{@animals}, although it will feast on nearly anything. It is #{@adjective2} and #{@adjective3}. You must be #{@adjective4} around it, or you may end up as it`s meal!"
	end
end

stuff = Story.new

stuff.getting_words

stuff.writing