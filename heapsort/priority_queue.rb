require_relative "max_heap"

class PriorityQueue

  def initialize(items)
    @max_heap = MaxHeap.new items
  end

  def enqueue(item)
  end

  def dequeue
    @max_heap.shift
  end

end
