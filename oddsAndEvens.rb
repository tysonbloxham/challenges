# Write a method that returns the elements on odd positions in an array. Then do even, then do a given number.

@cars = %w(lamborgini ferrari porsche nissan audi dodge ford)


def odd_or_even (i, x = @cars.length)
	while i <= x - 1
		puts @cars[i]
		i += 2
	end
end

puts "Do you want it returned by odds or evens? Or you can put in a specific element number."
input = gets.chomp.downcase
case input
when "odds"
	odd_or_even(0)
when "evens"
	odd_or_even(1)
else
	odd_or_even(input.to_i - 1, input.to_i)
end