def swapcase(string)
  swap = string.chars.map do |letter|
      if letter =~ /[a-z]/
        letter.upcase
      elsif letter =~ /[A-Z]/
        letter.downcase
      else
        letter
      end
  end
  swap.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'