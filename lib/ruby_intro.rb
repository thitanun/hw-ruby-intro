# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  summary = arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length == 1
  return false if arr.empty?
  (0...arr.length).each {|x|
    (x+1...arr.length).each {|y|
      return true if arr[x] + arr[y] == n}}
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[^AEIOU\W\d]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s =~ /[01]+/) == 0 and (s.to_i % 4 == 0)
      return true
  end
  return false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_reader :isbn,:price

  def initialize(isbn,price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    @price = price.to_f
    return "$#{'%.2f' % @price}"
  end

end