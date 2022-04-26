require_relative 'reverse_writer'

reverse_writer = ReverseWriter.new(ARGV[0], ARGV[1])
reverse_writer.start 
