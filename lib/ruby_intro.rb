# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
	return 0 if arr.empty?
	return arr[0] if arr.length == 1

	arr.sort! { |a, b| b <=> a } 

	arr[0] + arr[1]
end

def sum_to_n? arr, n
	return false if [0, 1].include? arr.length

	arr.each do |el|
		current_index = arr.find_index el
		other_nums = arr.dup.tap {|i| i.delete_at(current_index)}
		other_nums.each do |num|
			return true if el + num == n 
		end
	end
	false
end

# Part 2

def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant? s
	return false if s.empty? || s[0] =~ /\W/

	return true if !['a', 'e', 'i', 'o', 'u'].include? s[0].downcase
end

def binary_multiple_of_4? s
	return true if s == '0'

	if s =~ /^[0-1]+[^a-z]$/i
		return !! (s.to_i(2) % 4 == 0)
  else
  	false
  end
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price
	
	def initialize(isbn, price)
		raise(ArgumentError) if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf "$%.2f", @price
	end
end
