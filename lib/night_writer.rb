#runner file
require_relative 'reader'

english_reader = Reader.new(ARGV[0], ARGV[1])


# message = ARGV[0]
# braille = ARGV[1]
# #open file put in first index position on command line
# english_file = File.read(message) #readable
# #read file
# # english_read = english_file.read
# #upcase file and set it to variable
# braille_write = english_file.upcase
# #create new writable file, seccond index potition on the
# #command line
# braille_file = File.open(braille, 'w') #Writable
# #write to the file using variable we manipulated file with
# braille_file.write(braille_write)
# #close both files
# english_file.close
# braille_file.close
# #return names of files put in command line
# p "Created #{braille} from #{message}"
