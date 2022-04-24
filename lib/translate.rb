require_relative 'braille_dictionary'

class Translate < BrailleDictionary

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
