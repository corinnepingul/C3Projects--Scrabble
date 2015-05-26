require './lib/scrabble/scrabble-class.rb'

describe "score(word)" do

  it "returns 7 for'aaaaaaa'" do
    expect(Scrabble::Scrabble.score("aaaaaaa")).to eq(7)
  end

  it "returns 'ERROR' for numbers in input" do
    expect(Scrabble::Scrabble.score("hel4lo")).to eq("ERROR")
  end

  it "returns 'ERROR' for spaces in input" do
    expect(Scrabble::Scrabble.score("he llo")).to eq("ERROR")
  end

  it "returns 'ERROR' for nothing in input" do
    expect(Scrabble::Scrabble.score("")).to eq("ERROR")
  end

  it "returns 'ERROR' for nil in input" do
    expect(Scrabble::Scrabble.score(nil)).to eq("ERROR")
  end

  it "returns 'ERROR' if length of the word is > 7" do
    expect(Scrabble::Scrabble.score("eightlet")).to eq("ERROR")
  end
end

describe "highest_score_from(array_of_words)" do
  it "returns word with highest score" do
    array_of_words = ["hello", "format", "bland", "jump", "sailor", "field", "parking"]
    expect(Scrabble::Scrabble.highest_score_from(array_of_words)).to eq("jump")
  end

end
