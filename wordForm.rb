require 'to_words'

arr = []
total = 0

10.times do
	puts "Type a number."
	num = gets.chomp.to_i
	arr << num
end

arr.each do |x|
	total += x
end

puts total.to_words