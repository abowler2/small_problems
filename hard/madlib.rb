ADJECTIVES = %W(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg cat tail).freeze
VERBS = %w(spins bites licks hurdles).freeze
ADVERBS = %w(easily lazily noisly excitedly).freeze

File.open('madlib.txt') do |file|
  file.each do |line|
    line.gsub!('(noun)', NOUNS.sample)
    line.gsub!('(adjective)', ADJECTIVES.sample)
    line.gsub!('(verb)', VERBS.sample)
    line.gsub!('(adverb)', ADVERBS.sample)
    puts line
  end
end



