require './lib/reader'

RSpec.describe Reader do
  it 'exists' do
    reader = Reader.new("message.txt", "braille.txt")
    expect(reader).to be_a(Reader)
  end

  # it 'can count characters' do
  #
  # end
  #
  # it 'can print welcome message' do
  #
  # end

end
