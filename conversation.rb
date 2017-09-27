# Bob is a lackadaisical teenager. In conversation, his responses are very limited. 

# Bob answers 'Sure.' if you ask him a question.

# He answers 'Whoa, chill out!' if you yell at him.

# He says 'Fine. Be that way!' if you address him without actually saying anything.

# He answers 'Whatever.' to anything else.

def init
	puts "Ask Bob anything."
	sentence = gets.chomp.split("").last
	response(sentence)
end

def response(sentence)
	case sentence
	when "?"
		puts "Sure"
	when "!"
		puts "Whoa, chill out"
	when nil
		puts "Fine. Be that way"
	else 
		puts "Whatever"
	end
end

init