require_relative 'braille_dictionary'

class ReverseTranslate < BrailleDictionary

  def braille_to_char(in_char)
    @alphabet.invert[in_char]
  end

  def braille_to_english(in_message)
    message = in_message.map do |b_letter|
      braille_to_char(b_letter)
    end
    message.join
  end

  def reverse_one_char(braille)
    braille_char = []
    braille_n = braille.split(/\n/)
    braille_n.each do |char|
      new_c = char.split("")
      first_two = new_c[0..1].join
      braille_char << first_two
    end
    braille_char
  end

  def cut_two_dots(braille)
    new_braille = ""
    braille_n = braille.split(/\n/)
     braille_n.each do |char|
       new_c = char.split("")
       braille_join = new_c[2..-1].join + "\n"
       new_braille << braille_join
    end
    new_braille.chomp
  end

  def reverse_transpose(braille)
    full_arr = []
    temp_braille = braille
    while !temp_braille.empty?
      array = reverse_one_char(temp_braille)
      full_arr << array
      temp_braille = cut_two_dots(temp_braille)
    end
    braille_to_english(full_arr)
  end
end
