=begin
  Notes:
    - input: array of strings
    - output: array of same strings with vowels (a, e, i, o, u) removed

  Example:
   remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
   remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
   remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

  Data structure:
   - strings
   - regex

  Algorithm:
   - split the words into individual strings
   - map the chars of the strings to an array, do not include the vowels
   - join the strings back together
=end

def remove_vowels(array)
  array.map { |word| word.delete('aeiouAEIOU') }
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
