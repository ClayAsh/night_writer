require_relative './reverse_translate'

class ReverseWriter < ReverseTranslate
  attr_accessor :english,
                :braille
  def initialize(braille, english)
    @braille = braille #ARGV[1]
    @english = english #ARGV[0]
    super()
  end

  def read_write(braille, english)
    braille_file = File.open(braille)
    braille_read = braille_file.read

    english_write = braille_to_english(braille_read)
    write_english = reverse_transpose(english_write)
    english_file = File.write(english, write_english)
  end

  def character_counter(file_path)
    character_count = File.read(file_path).length
    return character_count
  end

#braille should return file name, not file object
  def welcome_message(file_path)
    p "Created #{file_path} containing #{character_counter("message.txt")} characters."
  end
end

#all file paths will be ARGV

writer = Writer.new('./braille.txt', './new_message.txt')
writer.read_write(writer.english, writer.braille)
writer.welcome_message('english.txt')
