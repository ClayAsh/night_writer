# require './lib/writer'
require './lib/translate'

RSpec.describe Translate do
  it 'exists' do
    translate = Translate.new
    expect(translate).to be_a(Translate)
  end

  it 'has attributes' do
    translate = Translate.new
    expect(translate.alphabet).to be_a(Hash)
  end

  it 'can translate english char to braille' do
    translate = Translate.new
    expect(translate.char_to_braille("h")).to eq(["O.", "OO", ".."])
  end

  it 'can translate english string to braille' do
    translate = Translate.new
    expect(translate.english_to_braille("he")).to eq([["O.", "OO", ".."], ["O.", ".O", ".."]])
  end

  it 'can transpose braille' do
    translate = Translate.new
    expect(translate.transpose_braille([["O.", "OO", ".."], ["O.", ".O", ".."]])).to eq("O.O.\nOO.O\n....")
  end
end
