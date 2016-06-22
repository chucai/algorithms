class MinHeap
  attr_reader :items

  def initialize(items)
    @items = self.class.translate(items)
  end

  def insert(number)
    @items << number
    current = @items.size - 1
    parent =  (current - 1) / 2
    while parent > -1 && @items[parent] > @items[current]
      @items[parent], @items[current] = @items[current], @items[parent]
      current = parent
      parent = (current - 1) / 2
    end
    @items
  end

  def pop
    @items[0], @items[-1] = @items[-1], @items[0]

    value = @items.pop

    self.class.build_min_heap(@items, 0)

    value
  end

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


