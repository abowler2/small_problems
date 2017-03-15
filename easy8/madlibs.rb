def prompt(string)
  puts "=> #{string}"
end

prompt "Enter a noun: "
noun = gets.chomp
prompt "Enter a verb: "
verb = gets.chomp
prompt "Enter an adverb: "
adverb = gets.chomp
prompt "Enter an adjective:"
adjective = gets.chomp

puts "Why does the #{adjective} #{noun} #{verb} so #{adverb}?"