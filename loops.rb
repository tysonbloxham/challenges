# Write three methods that compute the sum of the numbers in an array: using a
	# for-loop, a while-loop, and recursion



array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@final3 = 0

def stuff (arr)
	final = 0
	for x in arr do
		final += x
	end
	puts "For loop is: #{final}"
end

stuff(array)

def things (arr)
	final = 0
	iterator = 0
	while iterator < arr.length do
		final += arr[iterator]
		iterator += 1
	end
	puts "While loop is: #{final}"
end

things(array)

@count = 0
def recursive (arr)
	@final3 += arr[@count]
	@count += 1
	return puts "Recursion is: #{@final3}"if @count >= arr.length
	recursive(arr)
end

recursive(array)