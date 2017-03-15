=begin
Notes:
  input: array
  output: array with elements reversed

Examples:
  [1, 2, 3, 4] => [4, 3, 2, 1]
  %w(a b c d e) => ['e', 'd', 'c', 'b', 'a']
  ['abc'] => ['abc']
  [] => []

Data structure:
  - array

Algorithm:
  - iterate from the end of the array and reverse elements in the array

=end

def reverse!(array)
  left_index = 0
  right_index = -1
  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

# Using Array#insert

#def reverse!(array)
#  (array.size - 1).times do |index|
#    last = array.pop
#    array.insert(index, last)
#  end
#  array
#end


list = [2, 3, 4, 1]
result = reverse!(list) # => [4,3,2,1]
p list == [1, 4, 3, 2]
 p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]#

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]#

list = []
reverse!([]) # => []
p list == []
