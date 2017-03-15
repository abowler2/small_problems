=begin
Notes:
  - input: number
    - n will be an odd integer
  - output of n strings
    - for (5) number of stars per line: 1, 3, 5, 3, 1
      - prepend spaces: 2, 1, 0, 1, 2

Examples:
  - diamond(1)
      *
  - diamond(3)
      *
     ***
      *

Data Structure:
  - number

Algorithm:
  - create a string with # of stars for pattern
  - prepend the correct number of spaces
  - loop through each line to print the * as per the pattern 

=end


def print_row(size, distance_from_center)
  number_of_stars = size - (2 * distance_from_center)
  stars = '*' * number_of_stars
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

