require 'simplecov'
SimpleCov.start
require './lib/writer'

RSpec.describe Writer do
  it 'exists' do
    writer = Writer.new('message.txt', 'braille.txt')
    expect(writer).to be_a(Writer)
  end

  it 'can read and write data' do
    writer = Writer.new('message.txt', 'braille.txt')
    File.write('message.txt', "hello world")
    writer.read_write('message.txt', 'braille.txt')
    expected = File.read('braille.txt')
    expect(expected).to eq( "O.O.O.O.O....OO.O.O.OO\nOO.OO.O..O..OO.OOOO..O\n....O.O.O....OO.O.O...")
  end

  it 'can count characters' do
    writer = Writer.new('message.txt', 'braille.txt')
    File.write('message.txt', "hello world")
    writer.read_write('message.txt', 'braille.txt')
    character_count = File.read("message.txt").length
    expect(character_count).to eq(11)
    expect(writer.character_counter(writer.english)).to be_a(Integer)
  end

  it 'can print welcome message' do
    writer = Writer.new('message.txt', 'braille.txt')
    expected = "Created #{writer.braille} containing #{writer.character_counter(writer.english)} characters."
    expect(writer.welcome_message).to eq(expected)
  end

end
