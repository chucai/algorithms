require 'minitest/autorun'

require_relative 'max_heap'

describe MaxHeap do
  it 'will build a max heap' do
    input = [1,2,3]
    max_heap = MaxHeap.new input
    output = max_heap.list
    output.must_equal [3, 2, 1]
  end

  it "should build a complex max heap tree" do
    input = [1,2,3,4,5,6,7]
    max_heap = MaxHeap.new input
    output = max_heap.list
    output.must_equal [7, 5, 3, 4, 2, 6, 1]
  end
end
