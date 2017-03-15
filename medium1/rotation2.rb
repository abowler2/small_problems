def rotate_array(array)
  array.slice(1, array.size) << array[0]
end

def rotate_rightmost_digits(number, n)
  num_array = number.to_s.split('')
  right_side = num_array.slice(-n, n)
  left_side = num_array.slice(0, num_array.size - n)
  (left_side + rotate_array(right_side)).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917