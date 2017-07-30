def start_with_vowel(word)
  %w(a e i o u).include?(word[0])
end

def move_consonant_to_end(word)
  first_vowel = 0
  word.chars.each_with_index do |char, idx|
    if %w(a e i o u).include?(char) && word.chars[idx - 1] != 'q'
      first_vowel = idx
      break
    end
  end
  word << word.slice!(0, first_vowel)
end

def add_ay_to(word)
  word << 'ay'
end

def translate(str)
  words = str.split
  words.map do |word|
    if start_with_vowel(word)
      add_ay_to(word)
    else
      move_consonant_to_end(word)
      add_ay_to(word)
    end
  end
  words.join(' ')
end