def fibonacci(num)
  index = 3
  a, b = 1, 1
  sum = 0

  loop do
    sum = a + b
    break if index == num
    a = b
    b = sum 
    index += 1
  end
  sum
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501