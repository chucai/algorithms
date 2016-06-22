require "minitest/autorun"
require_relative './min_heap'

describe "MinHeap" do

  describe ".build_min_heap" do
    describe "[3,2,1]" do
      it "should equal [1,2,3]" do
        MinHeap.build_min_heap([3,2,1], 0).must_equal [1,2,3]
      end
    end

    describe "[5,1,3,2,4]" do
      it "should equal [1,2,3,5,4]" do
        MinHeap.build_min_heap([5,1,3,2,4], 0).must_equal [1,2,3,5,4]
      end
    end
  end

  describe ".translate" do
    describe "[10,9,8,7,6,5,4,3,2,1]" do
      it "should equal [1, 2, 4, 3, 6, 5, 8, 10, 7, 9]" do
        items = [10,9,8,7,6,5,4,3,2,1]
        MinHeap.translate(items).must_equal [1, 2, 4, 3, 6, 5, 8, 10, 7, 9]
      end
    end
  end

  before(:each) do
    @array = [5, 1, 3, 2, 4]
    @min_heap = MinHeap.new @array
  end

  describe "@items" do
    it "should equal [1,2,3,5,4]" do
      @min_heap.items.must_equal([1,2,3,5,4])
    end
  end

  describe "#insert" do
    it "should return a min heap" do
      result = @min_heap.insert(0)
      result.must_equal([0, 2, 1, 5, 4, 3])
    end
  end

  describe ".pop" do
    it "should pop the first item" do
      result = @min_heap.pop
      result.must_equal 1
    end

    it "should retain min heap" do
      result = @min_heap.pop
      @min_heap.items.must_equal [2, 4, 3, 5]
    end
  end

end
