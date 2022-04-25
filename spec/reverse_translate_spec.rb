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

  it 'can reverse translate english char to braille' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.braille_to_char(["O.", "OO", ".."])).to eq("h")
  end

  it 'can reverse translate multiple braille characters' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.braille_to_english([["O.", "OO", ".."], ["O.", ".O", ".."]])).to eq("he")
  end

  it 'can reverse braille' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.reverse_one_char("O.O.\nOO.O\n....")).to eq(["O.", "OO", ".."])
  end

  it 'can remove first braille character' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.cut_two_dots("O...O.\nOO...O\n......")).to eq("..O.\n...O\n....")
  end

  it 'can reverse words with spaces' do
    reverse_translate = ReverseTranslate.new
    expect(reverse_translate.reverse_transpose("O...O.\nOO...O\n......")).to eq("h e")
  end
end
