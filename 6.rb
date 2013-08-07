#Find the difference between the sum of the squares of the first 100 natural #'s
#and the square of the sum

#Brute Force
beginning_time = Time.now
square_of_sums = (1..100).reduce(:+) ** 2
sum_of_squares = (1..100).map {|i| i * i}.reduce(:+)
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time) * 1000} milliseconds"
puts square_of_sums - sum_of_squares
