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

def fibonacci_last(num)
  fibonacci(num).to_s.slice(-1).to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) # -> 4