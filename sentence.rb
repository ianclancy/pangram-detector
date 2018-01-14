class Sentence
  attr_reader :missing_letters

  def initialize(text)
    @text = text
    @letters = {
      "a" => false,
      "b" => false,
      "c" => false,
      "d" => false,
      "e" => false,
      "f" => false,
      "g" => false,
      "h" => false,
      "i" => false,
      "j" => false,
      "k" => false,
      "l" => false,
      "m" => false,
      "n" => false,
      "o" => false,
      "p" => false,
      "q" => false,
      "r" => false,
      "s" => false,
      "t" => false,
      "u" => false,
      "v" => false,
      "w" => false,
      "x" => false,
      "y" => false,
      "z" => false
    }
    @missing_letters = []
  end

  def pangram?
    @text.each_char do |char|
      @letters[char] = true
    end
    status = true
    @letters.each do |letter, value|
      if !@letters[letter]
        status = false
        @missing_letters << letter
      end
    end
    status
  end
end
