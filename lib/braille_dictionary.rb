
class BrailleDictionary
  attr_reader :alphabet
  def initialize
    @alphabet = {
      'a' => ['O.','..','..'],
      'b' => ['O.','O.','..'],
      'c' => ['OO','..','..'],
      'd' => ['OO','.O','..'],
      'e' => ['O.','.O','..'],
      'f' => ['OO','O.','..'],
      'g' => ['OO','OO','..'],
      'h' => ['O.','OO','..'],
      'i' => ['.O','O.','..'],
      'j' => ['.O','OO','..'],
      'k' => ['O.','..','O.'],
      'l' => ['O.','O.','O.'],
      'm' => ['OO','..','O.'],
      'n' => ['OO','.O','O.'],
      'o' => ['O.','.O','O.'],
      'p' => ['OO','O.','O.'],
      'q' => ['OO','OO','O.'],
      'r' => ['O.','OO','O.'],
      's' => ['.O','O.','O.'],
      't' => ['.O','OO','O.'],
      'u' => ['O.','..','OO'],
      'v' => ['O.','O.','OO'],
      'w' => ['.O','OO','.O'],
      'x' => ['OO','..','OO'],
      'y' => ['OO','.O','OO'],
      'z' => ['O.','.O','OO'],
      ' ' => ['..','..','..']
    }
  end


  def char_to_braille(in_char)
    @alphabet[in_char]
  end

  def english_to_braille(in_message)
    message = in_message.chomp.chars
    message.map do |letter|
      char_to_braille(letter)
    end
  end

  def transpose_braille(braille)
    braille.transpose.map { |line| line.join}.join("\n")
  end
end
