#What is the largest prime factor of the number 600,851,475,143

#Step 1: Find factors
#Step 2: Find largest prime factors 

#Brute Force
#Better way - only save value if its prime

#Better way - find prime factorization of each number
target = 13195 #600_851_475_143
factors = Array(2..(target-1)).keep_if {|i| target % i == 0 }
puts factors.keep_if {|i| 
