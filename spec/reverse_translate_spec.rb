# require './lib/braille_dictionary'
require './lib/reverse_translate'

RSpec.describe ReverseTranslate do
  it 'exists' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate).to be_a(ReverseTranslate)
  end

  it 'has attributes' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.alphabet).to be_a(Hash)
  end

  it 'can reverse_translate english char to braille' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.braille_to_char(["O.", "OO", ".."])).to eq("h")
  end

  it 'can reverse_translate braille character array to english' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.braille_to_english([["O.", "OO", ".."], ["O.", ".O", ".."]])).to eq("he")
  end

  xit 'can reverse braille' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.reverse_transpose("O.O.\nOO.O\n....")).to eq([["O.", "OO", ".."], ["O.", ".O", ".."]])

    xit 'can reverse words with spaces' do
      reverse_translate = ReverseTranslate.new
      expected = ([["O.", "OO", ".."], ['..','..','..'], ["O.", ".O", ".."]])
      expect(reverse_translate.reverse_transpose("O...O.\nOO...O\n......")).to eq(expected)
  end
end
