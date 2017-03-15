def prompt(msg)
  puts ">> #{msg}"
end

prompt "Please enter an integer greater than 0:"
int = gets.chomp.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

sum = (1..int).reduce(:+)
product = (1..int).reduce(:*)

if choice == 's'
  prompt "The sum of the integers between 1 and #{int} is #{sum}."
elsif choice == 'p'
  prompt "The product of the integers between 1 and #{int} is #{product}."
else
  prompt "Sorry. Unknown operation."
end
    