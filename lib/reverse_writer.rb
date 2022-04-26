require_relative './reverse_translate'

class ReverseWriter < ReverseTranslate
  attr_accessor :english,
                :braille
  def initialize(braille, english)
    @braille = braille
    @english = english
    super()
  end

  def read_write(english, braille)
    braille_file = File.open(braille)
    braille_read = braille_file.read
    english_write = reverse_transpose(braille_read)
    english_file = File.write(english, english_write)
  end

  def character_counter(file_path)
    character_count = File.read(file_path).length
    return character_count
  end

  def welcome_message(file_path)
    p "Created #{@english} containing #{character_counter(@english)} characters."
  end

  def start
    reverse_writer = ReverseWriter.new('braille.txt', 'english.txt')
    reverse_writer.read_write(reverse_writer.english, reverse_writer.braille)
    reverse_writer.welcome_message(ARGV[1])
  end
end 
