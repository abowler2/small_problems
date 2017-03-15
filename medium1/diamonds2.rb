=begin
Notes: create a hollow 4 point diamond

=end

def print_row(size, distance_from_center)
  number_of_stars = size - (2 * distance_from_center)
  if number_of_stars == 1
    stars = '*' * number_of_stars
  else
    stars = '*' + ' ' * (number_of_stars - 2) + '*'
  end
  puts stars.center(size)
end

def diamond(size)
  max_distance = (size - 1) / 2
  max_distance.downto(0) { |distance| print_row(size, distance) }
  1.upto(max_distance) { |distance| print_row(size, distance) }
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
