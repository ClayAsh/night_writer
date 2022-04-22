
class Reader
  # attr_accesor : :english_file_path
  def initialize(english_file, braille_file)
    # @english_file_path = File.new(ARGV[0], 'r')
    @lines = File.readlines(english_file)
    @braille_file = braille_file
    welcome_message
  end

  # def read
  #   read_file = @english_file_path.read
  #   @english_file_path.close
  #   read_file
  # end

  def character_counter
    count = 0
    @lines.each do |line|
      count += line.chomp.length
    end
    count
  end

  def welcome_message
    puts "Created #{ARGV[1]} containing #{character_counter} characters."
  end
end
