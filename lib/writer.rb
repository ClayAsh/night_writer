#require_relative './translate'

class Writer #< Translate
  attr_accessor :english,
                :braille
  def initialize(english, braille)
    @english = english #ARGV[0]
    @braille = braille #ARGV[1]
  end

  def read_write(english, braille)
    english_file = File.open(english)
    english_read = english_file.read
    braille_write = english_to_braille(english_read)
    # write_braille = transpose_braille(braille_write)
    # braille_file = File.write(braille, write_braille)
    braille_write = english_read.upcase
    braille_file = File.write(braille, braille_write)
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

writer = Writer.new('./message.txt', './braille.txt')
writer.read_write(writer.english, writer.braille)
writer.welcome_message('braille.txt')
