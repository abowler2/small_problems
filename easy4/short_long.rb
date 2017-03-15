def short_long_short(str1, str2)
  if str1.size < str2.size
    short = str1
    long = str2
  else
    short = str2
    long = str1
  end
    short + long + short
end
 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"