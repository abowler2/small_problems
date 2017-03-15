def double_consonants(string)
  double = string.chars.map do |letter|
    if letter =~ /[a-z&&[^aeiou]]/i
      letter * 2
    else
      letter
    end
  end
  double.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""