require "minitest/autorun"
require_relative './simple_min_heap'

describe Array do
  describe "with 3 items" do
    it "should equal [1,2,3]" do
      @items = [3,2,1]
      @items.build_min_heap.must_equal [1,2,3]
    end
  end

  describe "[4,3,2,1]" do
    it "should equal [1,3,2,4]" do
      @items = [4,3,2,1]
      @items.build_min_heap.must_equal [1,3,2,4]
    end
  end

  describe "[5,4,7,2]" do
    it "should equal [2,4,7,5]" do
      @items = [5,4,7,2]
      @items.build_min_heap.must_equal [2,4,7,5]
    end
  end


end
