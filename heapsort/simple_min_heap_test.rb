require "minitest/autorun"
require_relative './simple_min_heap'

describe Array do
  before do
    @items = [3,2,1]
  end

  it "should equal [1,2,3]" do
    @items.build_min_heap.must_equal [1,2,3]
  end

end
