puts "What number would you like to calculate the fibonacci sequence to?"
input = gets.chomp.to_i
fibb = [0, 1]

i = 1

while i < (input - 1) do
	fibb << (fibb[i] + fibb[i-1])
	i += 1
end

puts fibb