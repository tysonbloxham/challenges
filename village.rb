# There is a village with 10 people.

# Every night one random person gets turned into a random animal then turns back the next morning.

# If the person is a Lamb the, village is safe for the night.

# If the person is a Tiger, it eats a random person.

# If the person is a cow, the people accidentally eat him.

# If the person is a Dragon, 2 people get eaten.

# If the person is a Manticore another person magically appears!.

# Write a program that will run the senario until all the villagers but one are gone and see how many nights they survive.

require 'faker'

@villagers = ["Ian", "Braden", "Dallin", "Gordon", "Jared", "Dipesh", "Dave", "Tyson", "Ben", "Dan"]
@survival = 0

def night
	@animorph = @villagers.sample
	@victim = @villagers.sample
	if @victim == @animorph && @villagers.length >= 2
		@victim = @villagers.sample
		night
	else
		@survival += 1
	end
end

def dragon_kill
	@second_victim = @villagers.sample
	if @second_victim == @animorph && @villagers.length >= 2
		dragon_kill
	end
end

def magic_person
	@new_villager = Faker::StarWars.character
	if @villagers.include?(@new_villager)
		magic_person
	end
end

def lamb
	night
	puts "#{@animorph} turned into a lamb."
	puts "The village is safe for the night."
end

def tiger
	night
	puts "#{@animorph} turned into a tiger and then ate #{@victim}"
	@villagers.delete(@victim)
end

def cow
	night
	puts "#{@animorph} turned into a cow and was eaten by the villagers"
	@villagers.delete(@animorph)
end

def dragon
	night
	@villagers.delete(@victim)
	dragon_kill
	puts "#{@animorph} turned into a dragon and ate #{@victim} and #{@second_victim}"
	@villagers.delete(@second_victim)
end

def manticore
	night
	magic_person
	puts "#{@animorph} turned into a manticore and #{@new_villager} appeared!"
	@villagers << @new_villager
end

@animals = [method(:lamb), method(:tiger), method(:cow), method(:dragon), method(:manticore)]

def game
	until @villagers.length <= 1
		@animals.sample.call
		gets
	end

	if @villagers.length == 0
		puts "Nobody survived after #{@survival} nights!"
	else
		puts "#{@villagers[0]} survived for #{@survival} nights!"
	end
	play_again
end

def play_again
	puts "Would you like to play again?"
	input = gets.chomp.downcase.strip
	if input == "yes"
		@villagers = ["Ian", "Braden", "Dallin", "Gordon", "Jared", "Dipesh", "Dave", "Tyson", "Ben", "Dan"]
		@survival = 0
		game
	elsif input == "no"
		puts "Thanks for playing."
		exit
	else
		puts "That's not a valid input."
		play_again
	end
end

game
