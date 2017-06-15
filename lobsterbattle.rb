# The year is 1776 and the Lobster Backs and Minute Maids meet in a field to do battle.

# The groups take turns shooting at each other

# Each person in each group has a 50% chance of being hit and dying.

# How many rounds does it take to determine a winning group.
@lobsters = []
@minutes = []

1.upto(10) do |x|
	@lobsters << x
	@minutes << x
end

@is_hit = [0, 1]
@rounds = 0

def lob
	puts "It's the Lobster Backs' turn to shoot."
	@rounds += 1
	murders = 0
	@minutes.each do |x|
		if @is_hit.sample == 1
			murders += 1
		end
	end
	puts "The Lobster Backs have murdered #{murders} Minute Maids in cold blood."
	@minutes = @minutes.drop(murders)
	puts "There's #{@minutes.length} Minute Maids left."
	if @minutes.length > 0
		puts ""
		minute
	else
		puts "The Lobster Backs have won in #{@rounds} rounds."
	end
end

def minute
	puts "It's the Minute Maids' turn to shoot."
	@rounds += 1
	murders = 0
	@minutes.each do |x|
		if @is_hit.sample == 1
			murders += 1
		end
	end
	puts "The Minute Maids have murdered #{murders} Lobster Backs in cold blood."
	@lobsters = @lobsters.drop(murders)
	puts "There's #{@lobsters.length} Lobster Backs left."
	if @lobsters.length > 0
		puts ""
		lob
	else
		puts "The Minute Maids have won in #{@rounds} rounds."
	end
end

minute