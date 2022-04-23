
class Writer
  attr_accessor :english, :braille
  def initialize(english_file_path, braille_file_path)
    @english = File.open(english_file_path, 'r')
    @braille = File.open(braille_file_path, 'w')
  end

  # def clean_data(file_path)
  # #undefined method `strip' for #<File:message.txt>
  #   file_path.strip
  # end

  def read_write(english_file_path, braille_file_path)
    english_read = @english.read
    braille_write = english_read.upcase #translate
    braille_file_path.write(braille_write)
  end

  def character_counter(file_path)
    # clean_file_path = clean_data(file_path)
    count = 0
    file_path.each_char do |eng|
      count += eng.chomp.length
    end
    count
  end

  def welcome_message
    p "Created #{"braille.txt"} containing #{character_counter("braille.txt")} characters."
  end
end


writer = Writer.new("message.txt", "braille.txt")
writer.read_write(writer.english, writer.braille)
writer.welcome_message
