
def rotate_array(array)
  array.slice(1, array.size) << array[0]
end

def rotate_rightmost_digits(number, n)
  num_array = number.to_s.split('')
  right_side = num_array.slice(-n, n)
  left_side = num_array.slice(0, num_array.size - n)
  (left_side + rotate_array(right_side)).join.to_i
end

def max_rotation(number)
  number_size = number.to_s.size
  while number_size >= 2
    number = rotate_rightmost_digits(number, number_size)
    number_size -= 1
  end
  number
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845