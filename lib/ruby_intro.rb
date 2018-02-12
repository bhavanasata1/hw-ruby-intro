# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
      sum=0
      arr.each do|i|
        sum=sum+i
      end
      return sum
end

def max_2_sum arr
  # YOUR CODE HERE
    sum=0
    arr.sort!
 
    length= arr.length
 
    if length>1
      sum=arr[length-1]+arr[length-2]
    elsif length==0
      sum=0
    elsif length==1
      sum =arr[length-1]
   else
      sum = 0
     end

    return sum

end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    arr.combination(2).to_a.each do |i|
      return true if sum(i) == n
    end
  end

  return false
end

# Part 2

def hello(name)
  result = "Hello, #{name}"
 return result
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[0-1]+$/
    if s.to_i%4 == 0
     return true
    else 
     return false
    end
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
