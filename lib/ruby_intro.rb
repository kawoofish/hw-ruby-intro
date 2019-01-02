# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Use inject method from array to run inner code block (sum of all elements)
  # 0 as the base case in the event the array passed in is empty
  arr.inject(0){ |sum, x| sum+x }
end

def max_2_sum arr
  # If empty array output 0, if 1 element output said element, otherwise get the 2 maximums and sum
  if arr.length == 0
    0
  elsif arr.length == 1
    arr.at(0)
  else
    arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # If array is of length 1, then return false, otherwise, index array and see if n can be summed from 2 nums
  if arr.length == 1
    return false
  end
  arr.each_with_index do |x,i|
    k = n - x
    if arr.bsearch_index{|y| k<=>y}
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # Concat strings
  "Hello, " + name
end

def starts_with_consonant? s
  # Regex statement to avoid vowels. Must be a word and case is ignored
  if /^[^aeiou\W]/i.match(s) == nil
    false
  else
    true
  end
end

def binary_multiple_of_4? s
  if /^(0|(10|111*0)(10|111*0)*0)+$/.match(s) == nil
    return false
  else
    return true
  end
end

# Part 3

class BookInStock 
  # YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.empty? || price <= 0
      raise ArgumentError.new("Empty ISBN or price below 0!")
    end
  end
  
  def price_as_string
    output = "$%.2f" % price
  end
  
  attr_accessor :isbn
  attr_accessor :price
end
