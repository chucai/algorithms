class Array

  def build_min_heap
    index = 0
    (size/2).downto(0).each do |index|
      build_min_heap_with_index(index)
    end
    self
  end

  def build_min_heap_with_index(index)
    least = index
    left = 2 * index + 1
    right = 2 * index + 2

    if left < size && self[left] < self[index]
      least = left
    end

    if right < size && self[right] < self[least]
      least = right
    end

    if least != index
      self[index], self[least] = self[least], self[index]
      build_min_heap_with_index(least)
    end

    self
  end

end
