# Sort through an array of numbers and give the highest number without using .max.

arr = [1, 2, 5, 8, 4]
limit = 0

arr.map { |x| limit = x if x > limit }

puts limit