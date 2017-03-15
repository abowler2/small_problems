def message(name = 'Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end



puts "What is your name?"
name = gets.chomp

name.empty? ? message : message(name)