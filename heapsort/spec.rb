require 'minitest/autorun'

require_relative 'max_heap'
require_relative 'priority_queue'

describe MaxHeap do
  it 'will build a max heap' do
    input = [1, 2, 3]
    max_heap = MaxHeap.new input
    output = max_heap.list
    output.must_equal [3, 2, 1]
  end

  it "should build a complex max heap tree" do
    input = [1, 2, 3, 4, 5, 6, 7]
    max_heap = MaxHeap.new input
    output = max_heap.list
    output.must_equal [7, 5, 6, 4, 2, 1, 3]
  end
end

describe PriorityQueue do
  before(:each) do
    @queue = PriorityQueue.new([1,2,3,4,5,6,7])
  end

  describe "#dequeue" do
    it "should return the max value" do
      @queue.dequeue.must_equal 7
    end

    it "should return the second large value" do
      @queue.dequeue.must_equal 7
      @queue.dequeue.must_equal 6
    end
  end

end
