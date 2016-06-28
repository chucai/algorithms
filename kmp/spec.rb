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

  describe "#get_next" do
    describe "target is google" do
      it "should return an array of [0, 0, 0, 1, 0, 0]" do
        @match = Match.new("googgoolgle", "google")
        @match.get_next.must_equal [0, 0, 0, 1, 0, 0]
      end
    end

    describe "target is aabcaabca" do
      it "should return an array of [0, 1, 0, 0, 1, 2, 3, 4, 5]" do
        @match = Match.new("googgoolgle", "aabcaabca")
        @match.get_next.must_equal [0, 1, 0, 0, 1, 2, 3, 4, 5]
      end
    end
  end

  describe "#get_next_by_position" do
    before do
      @match = Match.new("googgoolgle", "google")
    end

    describe "position is 3" do
      it "should equal 1" do
        @match.get_next_by_position(3).must_equal 1
      end
    end

    describe "position is 4" do
      it "should equal 0" do
        @match.get_next_by_position(4).must_equal 0
      end
    end
  end

  describe "#get_common_string_of_target_by" do
    describe "when index = 3" do
      it "should equal ['g']" do
        @match = Match.new("googgoolgle", "google")
        @match.get_common_string_of_target_by(3).must_equal ['g']
      end
    end
  end

  describe "#get_prefix_string_by_index" do
    describe "when index = 3" do
      it "should equal ['g', 'go', 'goo']" do
        @match = Match.new("googgoolgle", "google")
        @match.get_prefix_string_by_index(3).must_equal ['g', 'go', 'goo']
      end
    end
  end

  describe "#get_postfix_string_by_index" do
    describe "when index = 3" do
      it "should equal ['g', 'og', 'oog']" do
        @match = Match.new("googgoolgle", "google")
        @match.get_postfix_string_by_index(3).must_equal ['g', 'og', 'oog']
      end
    end
  end


end
