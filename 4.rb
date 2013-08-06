#Find the largest palindrome, e.g. 9009, made from the product of two 3-digit numbers

i = 1000
largest_palindrome = 1

#iterative
until i < 100 do
  i = i - 1
  j = 1000
  until j < 100 do
    j = j - 1
    if (largest_palindrome < i*j && (i*j).to_s == (i*j).to_s.reverse)
      largest_palindrome = i * j 
    end
  end
end

puts largest_palindrome

#functional

def return_largest_palindrome(palindrome, potential)
  if(potential.to_s != potential.to_s.reverse)
    palindrome
  elsif(palindrome > potential)
    palindrome
  else
    potential
  end
end

#not tail optimized 
def find_largest_palindrome(largest_palindrome, i, j)
  if(i < 100)
    largest_palindrome
  elsif(j < 100)
    find_largest_palindrome(return_largest_palindrome(largest_palindrome, i*j),i-1,1000)
  else
    find_largest_palindrome(return_largest_palindrome(largest_palindrome,i*j),i,j-1)
  end 
end

find_largest_palindrome(1,1000,1000)

