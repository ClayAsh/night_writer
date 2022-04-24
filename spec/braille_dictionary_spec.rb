require './braille_dictionary'
require './translate'

RSpec.describe BrailleDictionary do
  it 'exists and has attributes' do
    braille_dictionary = BrailleDictionary.new
    expect(braille_dictionary).to be_a(BrailleDictionary)
  end
end
