require_relative './translate'

class Writer < Translate
  attr_accessor :english,
                :braille
  def initialize(english, braille)
    @english = english
    @braille = braille
    super()
  end

  def read_write(english, braille)
    english_file = File.open(english)
    english_read = english_file.read
    braille_write = english_to_braille(english_read)
    write_braille = transpose_braille(braille_write)
    braille_file = File.write(braille, write_braille)
  end

  def character_counter(file_path)
    character_count = File.read(file_path).length
    return character_count
  end

  def welcome_message
    p "Created #{@braille} containing #{character_counter(@english)} characters."
  end

  def start
    writer = Writer.new(ARGV[0], ARGV[1])
    writer.read_write(writer.english, writer.braille)
    writer.welcome_message
  end
end
