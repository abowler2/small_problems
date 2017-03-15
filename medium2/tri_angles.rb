=begin
Notes:
  - input: 3 angles of a triangle
  - output: type of triangle it is or invalid if not a valid triangle
  - Valid triangle =  sum of angles must == 180
                      all angles must be greater than 0

Data Structure:
  - array
  - case or if/else

Algorithm:
  - check for valid triangle
  - verify what type of triangle it is
    - right: one angle is 90 degrees
    - acute: all 3 angles are less than 90
    - obtuse: one angle is greater than 90

=end

def triangle(a1, a2, a3)
  angle_array = [a1, a2, a3]

  case 
  when angle_array.reduce(:+) != 180 || angle_array.include?(0) 
    :invalid
  when angle_array.include?(90)
    :right
  when angle_array.all? { |a| a < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
