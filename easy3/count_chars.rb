def count(words)
  words.delete(' ').size
end

puts "Please write a word or multiple words:"
input = gets.chomp

puts "There are #{count(input)} characters in '#{input}'"