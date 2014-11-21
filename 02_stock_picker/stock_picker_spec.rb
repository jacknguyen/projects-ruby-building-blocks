require_relative "stock_picker"


describe "the stock_picker function" do
  before :each do
    @stocks = stock_picker([17,3,6,9,15,8,6,1,10])
  end

  it "returns an array" do
    expect(@stocks.class).to eq(Array)
  end

  it "returns a pair of days" do
    expect(@stocks.length).to eq(2)
  end

  it "returns the best day to buy" do
    expect(@stocks.first).to  eq(1)
  end

  it "returns the best day to sell" do
    expect(@stocks.last).to  eq(4)
  end
end
