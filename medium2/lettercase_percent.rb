=begin
Notes:
  - input string of characters
  - output: hash with 3 values
      - percentage of lowercase letters
      - percentage of uppercase letters
      - percentage of characters that are neither

Example:
  letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
  letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }

Data structure:
  - hash
  - iterator to count letters and nonletters

Algorithm:
  - iterate through the string to count the number of uppercase, lowercase, and other 
    characters
  - return values as percentage of the total string

=end


def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  chars = string.chars
  length = string.length

  counts[:lowercase] = chars.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = chars.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = chars.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }