require './braille_dictionary'

RSpec.describe BrailleDictionary do
  it 'exists and has attributes' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary).to be_a(BrailleDictionary)
    expect(braille_dictionary.alphabet).to be_a(Hash)
  end
end
