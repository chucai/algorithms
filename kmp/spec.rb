require 'minitest/autorun'
require_relative "match"

describe Match do
  before do
    @source_str = "googdgoogle"
    @target_str = "google"
    @match = Match.new(@source_str, @target_str)
  end

  it "should create a match instance" do
    @match.source.must_equal @source_str
    @match.target.must_equal @target_str
  end

  it "should equal the start index" do
    require 'pry'
    binding.pry
    @match.simple.must_equal 5
  end

  it "should equal false" do
    @match = Match.new("googgoolgle", "google")
    @match.simple.must_equal false
  end
end
