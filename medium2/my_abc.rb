=begin
Notes:
  - given blocks have only 2 letters
  - check words given to see if they are possible with the available blocks

Example:
  block_word?('BATCH') == true
  block_word?('BUTCH') == false

Data structure:
  - array

Algorithm:
  - search through letters of given word
  - count letters to see if a set of letters was used more than once
  - return true if word uses only one letter of the blocks else return false



=end
require 'pry'


BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
 BLOCK.each do |block|
    return false if string.upcase.count(block) >= 2
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('tag') == false
p block_word?('FIZZLE') == false
