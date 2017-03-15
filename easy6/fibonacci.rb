=begin
Notes: 
  - calculate the index of the 1st Fibonacci number with number of digits 
    in given number.
  - first Fibonacci number is at index 1

Example:
  - find_fibonacci_index_by_length(2) == 7
  - find_fibonacci_index_by_length(10) == 45

Algorithm:
  - indexed iteration through the Fibonacci number sequence
  - return index when the number equals the number of digits given

=end

def find_fibonacci_index_by_length(num)
  index = 3
  a, b = 1, 1

  loop do
    c = a + b
    break if c.to_s.length >= num
    a = b
    b = c 
    index += 1
  end
  index
end



p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
