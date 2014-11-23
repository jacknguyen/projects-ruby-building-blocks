require_relative 'substrings'

describe 'the substrings function' do
  before :each do
    @dictionary = [
      "below",
      "down",
      "go",
      "going",
      "horn",
      "how",
      "howdy",
      "it",
      "i",
      "low",
      "own",
      "part",
      "partner",
      "sit" ]
  end

  it 'returns a hash' do
    expect(substrings("below", @dictionary).class).to eq(Hash)
  end

  it 'takes in word as first argument'

  it 'takes in an array of words as second argument'

  it 'can handle multiple words' do
    expect(substrings("go go", @dictionary)).to eq({'go' => 2})
  end
end
