require 'simplecov'
SimpleCov.start
require './lib/reverse_writer'

RSpec.describe ReverseWriter do
  it 'exists' do
    reverse_writer = ReverseWriter.new('./braille.txt', './english.txt')
    expect(reverse_writer).to be_a(ReverseWriter)
  end

  it 'can read and write data' do
    reverse_writer = ReverseWriter.new('./braille.txt', './english.txt')
    File.write('./braille.txt', "O.O.O.O.O....OO.O.O.OO\nOO.OO.O..O..OO.OOOO..O\n....O.O.O....OO.O.O...")
    reverse_writer.read_write('./braille.txt', './english.txt')
    expected = File.read('./english.txt')
    expect(expected).to eq( "hello world")
  end

  it 'can count characters' do
    reverse_writer = ReverseWriter.new('./braille.txt', './english.txt')
    File.write('./braille.txt', "O.O.O.O.O....OO.O.O.OO\nOO.OO.O..O..OO.OOOO..O\n....O.O.O....OO.O.O...")
    reverse_writer.read_write('./braille.txt', './english.txt')
    character_count = File.read("./english.txt").length
    expect(character_count).to eq(11)
    expect(reverse_writer.character_counter(reverse_writer.braille)).to be_a(Integer)
  end

  it 'can print welcome message' do
    reverse_writer = ReverseWriter.new('./braille.txt', './english.txt')
    expect(reverse_writer.welcome_message('english.txt')).to eq("Created english.txt containing 11 characters.")
  end

end
