require './braille_dictionary'
require './translate'

RSpec.describe BrailleDictionary do
  it 'exists and has attributes' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary).to be_a(BrailleDictionary)
  end

  it 'has attributes' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary.alphabet).to be_a(Hash)
  end

  it 'can translate english char to braille' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary.char_to_braille("h")).to eq(["O.", "OO", ".."])
  end

  it 'can translate english string to braille' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary.english_to_braille("he")).to eq([["O.", "OO", ".."], ["O.", ".O", ".."]])
  end

  it 'can transpose braille' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary.transpose_braille([["O.", "OO", ".."], ["O.", ".O", ".."]])).to eq("O.O.\nOO.O\n....")
  end
end
