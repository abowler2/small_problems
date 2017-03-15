DIGIT_HASH = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 
              'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 
              'eight' => 8, 'nine' => 9 }

def word_to_digit(string)
  new_array = string.split.map do |word|
    if DIGIT_HASH.has_key?(word)
      word = DIGIT_HASH[word]
    elsif DIGIT_HASH.has_key?(word[0..-2])
      punctuation = word[-1]
      word = DIGIT_HASH[word[0..-2]]
      word = "#{word}#{punctuation}"
    else
      word
    end
  end
  new_array.join(' ')
end

p word_to_digit('high five')
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# work on how to eliminate the period at the end of 'four' and still return 
# the correct string.