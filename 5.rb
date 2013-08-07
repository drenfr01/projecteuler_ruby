#What is the smallest positive number that is evenly disible by all of the numbers
#from 1 to 20?

#stack too deep?
def temp(number, divisor, max_divisor)
    temp(number+1, max_divisor, max_divisor) if divisor <= 1
    temp(number, divisor-1, max_divisor) if number % divisor == 0
    temp(number+1,max_divisor, max_divisor) if number % divisor != 0
end

#tail call optimization not enabled by Ruby by default
def temp2(number, divisor, max_divisor)
  if(divisor <= 1)  
    find_smallest_multiple(number+1, max_divisor, max_divisor) 
  elsif(number % divisor == 0)
    find_smallest_multiple(number, divisor-1, max_divisor) 
  else 
    find_smallest_multiple(number+1,max_divisor, max_divisor) 
  end
end
   
#time this, try to performance improve it (try reversing the range?)
#also can rule out all even numbers
def find_smallest_multiple
  number = 2520
  evenly_divisible = false
  max_divisor = 20
   
  until evenly_divisible == true do
    number += 2
    r = max_divisor..2
    (r.first).downto(r.last).each do |i|
      break if number % i != 0 
      evenly_divisible = true if i == 2 
    end
  end
  number
end
beginning_time = Time.now
puts find_smallest_multiple
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time) * 1000} milliseconds"
