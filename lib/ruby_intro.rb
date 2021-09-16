# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arrLength = arr.length()
  counter = 0
  sum = 0
  while counter < arrLength 
    sum += arr[counter]
    counter += 1
  end
  return sum
end

def max_2_sum(arr)
  if arr.length() == 0
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end
  arr = arr.sort()
  lastTwo = arr.last(2)
  return lastTwo[0] + lastTwo[1]
end

def sum_to_n?(arr, n)
  itemMap = {}
  arrLength = arr.length()
  
  if arrLength <= 2
    return false
  end

  counter = 0
  while counter < arrLength
    val = arr[counter]
    counter += 1
    if itemMap.key?(n-val)
      return true
    end
    itemMap[val] = true
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  strLength = s.length()
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  if strLength > 0
    char = s[0]
    if vowels.include?(char) or !char.match?(/[A-Za-z]/)
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4?(s)
  if s.length() == 0 or !s.match?(/^[01]+$/)
    return false
  end
  if s.to_i(2)%4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, cost)
    if isbn.length == 0 or cost <= 0
      raise ArgumentError.new("Invalid Input")
    end
    @isbn = isbn
    @price = cost
  end

  def price_as_string()
    return "#{'$%.2f' % @price}"
  end

  attr_accessor :price
  attr_accessor :isbn
end
