def prompt(msg)
  puts "=> Enter the #{msg} number:"
end

array = []

prompt "1st"
array << gets.chomp.to_i

prompt "2nd"
array << gets.chomp.to_i

prompt "3rd"
array << gets.chomp.to_i

prompt "4th"
array << gets.chomp.to_i

prompt "5th"
array << gets.chomp.to_i

prompt "last"
last_num = gets.chomp.to_i

if array.include?(last_num)
  puts "The number #{last_num} appears in #{array}."
else
  puts "The number #{last_num} does not appear in #{array}."
end
