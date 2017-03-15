=begin
  - split array in half and put elements into 2 arrays. 
  - if array is odd numbers then middle number goes in first array

=end

def halvsies(array)
  half = array.size / 2.0
  array_left = []
  array_right = []

  if half % 2 != 0
   array_left = array.slice(0, half.ceil)
   array_right = array.slice(array_left.size, half)
  else
    array_left = array.slice(0, half)
    array_right = array.slice(array_left.size, half)
  end
  [array_left, array_right]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
