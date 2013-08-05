# Find the sum of all the multiples of 3 or 5 below 1000
puts Array(1..999).keep_if  {|i| i % 3 == 0 || i % 5 == 0}.inject(0) {|x,y| x + y}
