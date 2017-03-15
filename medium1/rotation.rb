=begin
Notes:
  - input: array
  - output: arry with first element rotated to the end of the array
  - original array should not be modified

Examples:
  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]   

Algorithm:
  - slice the first element and append it to the end of the array.

=end
require 'pry'

def rotate_array(array)
  array.slice(1, array.size) << array[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   
p x == [1, 2, 3, 4] 
