#By considering the terms in the Fibonacci sequence whose values do not 
#exceed 4 million, find the sum of the even-valued terms

sum = 0 
current_fib_num = 2
past_fib_num = 1

#iterative
until current_fib_num > 4_000_000 do
  temp = current_fib_num
  current_fib_num = current_fib_num + past_fib_num
  past_fib_num = temp 
  if (past_fib_num % 2 == 0)
    sum = sum + past_fib_num
  end
end
puts sum

#functional
def fibonacci(sum, current_fib_num, last_fib_num)
  if(current_fib_num > 4_000_000)
    sum
  elsif(current_fib_num % 2 == 0)
    fibonacci(sum + current_fib_num, current_fib_num + last_fib_num, 
      current_fib_num)
  else
    fibonacci(sum, current_fib_num + last_fib_num, current_fib_num)
  end
end

puts fibonacci 0,2,1
