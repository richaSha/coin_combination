require('rspec')
require('coin_combination')
require('pry')

describe("#coin_combination") do
  it("return possible max no of quater for user entered coins ") do
    cents_converter = CoinCombination.new()
    expect(cents_converter.converter(75)).to(eq("3 Quater"))
  end

  it("return possible max no of Dime for user entered coins ") do
    cents_converter = CoinCombination.new()
    expect(cents_converter.converter(20)).to(eq("2 Dime"))
  end

  it("return possible max no of Nickel for user entered coins ") do
    cents_converter = CoinCombination.new()
    expect(cents_converter.converter(5)).to(eq("1 Nickel"))
  end

  it("return possible max no of Penny for user entered coins ") do
    cents_converter = CoinCombination.new()
    expect(cents_converter.converter(4)).to(eq("4 Penny"))
  end

  it("return possible max no of quater, Dime, Nickel and Penny for user entered coins ") do
    cents_converter = CoinCombination.new()
    expect(cents_converter.converter(114)).to(eq("4 Quater 1 Dime 4 Penny"))
  end
end
