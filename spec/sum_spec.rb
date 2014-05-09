require_relative '../consecutive_sum.rb'

describe "Sum of Consecutive Numbers" do
  it "returns true when passed a number that can be summmed consecutively" do
    expect(consecutive_sum?(3)).to be_truthy
    expect(consecutive_sum?(10)).to be_truthy
    expect(consecutive_sum?(31)).to be_truthy
  end

  it "returns false when passed a number that cannot be summmed consecutively" do
    expect(consecutive_sum?(4)).to be_falsy
    expect(consecutive_sum?(8)).to be_falsy
    expect(consecutive_sum?(32)).to be_falsy
  end

  it "raises an error when passed a non-integer" do
    expect{consecutive_sum?("hello")}.to raise_error(ArgumentError, "Input must be an integer")
  end

  it "raises an error when passed a negative" do
    expect{consecutive_sum?(-2)}.to raise_error(ArgumentError, "Input must be larger than 0")
  end
end