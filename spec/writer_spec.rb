require './lib/writer'

RSpec.describe Writer do
  it 'exists' do
    writer = Writer.new("message.txt", "braille.txt")
    expect(writer).to be_a(Writer)
  end

  xit 'can clean data' do
    writer = Writer.new("message.txt", "braille.txt")
    expect(writer.clean_data(writer.english)).to eq("hello world")
  end

  xit 'can read and write data' do
    writer = Writer.new("message.txt", "braille.txt")
    require "pry"; binding.pry
    expect(writer.braille).to eq("HELLO WORLD")
  end

  it 'can count characters' do
    writer = Writer.new("message.txt", "braille.txt")
    expect(writer.character_counter(writer.english)).to eq(12)
    expect(writer.character_counter(writer.english)).to be_a(Integer)
  end

  it 'can print welcome message' do
    writer = Writer.new("message.txt", "braille.txt")
    expect(writer.welcome_message).to eq("Created braille.txt containing 11 characters.")
  end

end
