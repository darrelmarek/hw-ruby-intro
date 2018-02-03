# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  arr.combination(2).any?{|x, y| x + y == n}
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  s.downcase.start_with?('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z')
end

def binary_multiple_of_4? s
  s[/(\A[10]*100\z|\A0\z)/]
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
	  raise ArgumentError
	end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$" << "%.2f" % @price
  end
end
