class Book
  attr_accessor :title

  def title= (str)
    little_words = %w(and or a an any some on up in the of off)
    words = str.split

    words[0].capitalize!
    words[1..-1].map do |word|
      if little_words.include?(word)
        word
      else
        word.capitalize!
      end
    end
    @title = words.join(' ')
  end
end
