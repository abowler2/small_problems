def substrings_at_start(string)
  substring_array = []
  1.upto(string.size) do |sub|
    substring_array << string.slice(0, sub)
  end
  substring_array
end

def substrings(string)
  result = []
  0.upto(string.size).each do |index|
    sub_string = string[index..-1]
    result.concat(substrings_at_start(sub_string))
  end
  result
end

def palindromes(string)
  result = []
  string_subs = substrings(string) 
  string_subs.each do |strings|
    result << strings if palindrome?(strings)
  end
  result
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]