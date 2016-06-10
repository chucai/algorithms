require 'minitest/autorun'
require_relative 'combining_character'

describe CombiningCharacter do
  before do
    @comb = CombiningCharacter.new('23')
  end

  it "should response to combine method" do
    @comb.must_respond_to :combine
  end

  it "should return an array" do
    @comb.combine.must_be_instance_of(Array)
  end

  it "should equal character combining" do
    expect_value = %w(ad ae af bd be bf cd ce cf)
    @comb.combine.must_equal(expect_value)
  end

end
