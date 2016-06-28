require 'minitest/autorun'
require_relative "match"

describe Match do
  describe "#simple" do
    describe "when string match" do
      it "should equal the start index" do
        @match = Match.new("googlgggoogle", "google")
        @match.simple.must_equal 7
      end
    end

    describe "when string not match" do
      it "should equal false" do
        @match = Match.new("googgoolgle", "google")
        @match.simple.must_equal false
      end
    end
  end
end
