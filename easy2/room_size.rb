SQUARE_METER_TO_SQUARE_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

  meter_area = (length * width).round(2)
  feet_area = (meter_area * SQUARE_METER_TO_SQUARE_FEET).round(2)
  puts "The area of the room is #{meter_area} " + \
  "square meters (#{feet_area} square feet)."
