class Container

  def initialize(heights)
    @heights = heights
  end

  # 暴力破解方法
  def force_get_max_value
    max_area = 0
    i = 0
    while i < size
      j = i + 1
      while j <= size
        current_area = (j - i) * [@heights[i], @heights[j]].min
        if current_area > max_area
          max_area = current_area
        end
        j += 1
      end
      i += 1
    end
    max_area
  end

  def smart_get_max_value
    max_area = 0
    i, j = 0, size

    while i < j
      current_area = (j - i) * [@heights[i], @heights[j]].min
      max_area = current_area if current_area > max_area

      if @heights[i] > @heights[j]
        j -= 1
      else
        i += 1
      end
    end

    max_area
  end

  def size
    @size ||= @heights.size  - 1
  end
end
