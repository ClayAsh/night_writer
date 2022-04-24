require_relative 'english_dictionary'

class ReverseTranslate < EnglishDictionary

  def braille_to_char(in_char)
    @alphabet.invert[in_char]
  end

  def braille_to_english(in_message)
    message = in_message.map do |b_letter|
      braille_to_char(b_letter)
    end
    message.join
  end

  def reverse_transpose(braille)
    braille.transpose.map { |line| line.join}.join("\n")
  end
end
