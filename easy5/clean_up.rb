

def cleanup(words)
  words.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '