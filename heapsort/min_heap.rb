require "minitest/autorun"

describe "MinHeap" do
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

  describe "[10,9,8,7,6,5,4,3,2,1]" do
    it "should equal [1, 2, 4, 3, 6, 5, 8, 10, 7, 9]" do
      items = [10,9,8,7,6,5,4,3,2,1]
      MinHeap.translate(items).must_equal [1, 2, 4, 3, 6, 5, 8, 10, 7, 9]
    end
  end
end

class MinHeap

  class << self

    def translate(items)
      start = items.size / 2
      start.downto(0).each do |i|
        build_min_heap(items, i)
      end
      items
    end

    def build_min_heap(items, current)
      left = 2 * current + 1
      right = 2 * current + 2
      least = current

      if left < items.size && items[least] > items[left]
        least = left
      end

      if right < items.size && items[least] > items[right]
        least = right
      end

      if least != current
        items[current], items[least] = items[least], items[current]

        build_min_heap(items, least)
      end

      items
    end

  end

end


