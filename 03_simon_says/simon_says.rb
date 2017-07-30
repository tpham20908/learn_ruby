def echo(sentence)
  sentence
end

def shout(sentence)
  sentence.upcase
end

def repeat(sentence, n = 2)
  sentences = []
  n.times { sentences << sentence }
  sentences.join(' ')
end

def start_of_word(word, n)
  word.chars[0, n].join
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  little_words = %w(the over and under in on below)
  new_words = []
  words.split.each_with_index do |word, idx|
    new_words <<  if little_words.include?(word) && idx != 0
                    word
                  else
                    word.capitalize
                  end
  end
  new_words.join(' ')
end