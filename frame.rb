puts "What sentence would you like to frame for posterity?"
input = gets.chomp.split
limit = 0

input.each do |x|
	if x.length > limit
		limit = x.length
	end
end

(limit+2).times do
	print "*"
end

puts

input.each do |x|
	extra = limit - x.length
	puts "*" + "#{x}" + " "*extra + "*"
end

(limit+2).times do
	print "*"
end