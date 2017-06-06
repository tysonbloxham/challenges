puts "What number would you like to go to?"
input = gets.chomp.to_i

def fizzy(input)
	1.upto(input) do |number|
		is_prime = true
		2.upto(number-1) do |x|
			if number % x == 0
				is_prime = false
			end
		end
		if is_prime == true
			puts "fizzbuzzfizz"
		elsif number % 15 == 0
			puts "fizzbuzz"
		elsif number % 5 == 0
			puts "buzz"
		elsif number % 3 == 0
			puts "fizz"
		else 
			puts number
		end
	end
end
				
fizzy(input)