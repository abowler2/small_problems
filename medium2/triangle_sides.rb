=begin
Notes:
  - Valid triangle = sum of 2 shortest sides is larger than the longest side
                     all sides must be greater than 0
  - equilateral - all sides equal
  - isosceles - 2 sides equal
  - scalene - all 3 sides diffent lengths

Data Structure:
  - Array
  - if / else

Algorithm:
  - verify if triangle is valid
  - if valid, identify which type of triangle it is
=end


def triangle(s1, s2, s3)
  triangle_array = [s1, s2, s3]
  shortest_sides = triangle_array.min_by(2) { |side| side }
  longest_side = triangle_array.max_by { |side| side }

  if shortest_sides.reduce(:+) < longest_side || triangle_array.include?(0)
    :invalid
  elsif s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 || s2 == s3 || s1 == s3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
