class Main
  class << self
    def build_max_heap(list)
      help(list, list.length, 0)
      list
    end

    def help(list, n, i)
      left = i * 2 + 1
      right = i * 2 + 2
      if left <= n && list[left] > list[i]
        large = left
      else
        large = i
      end

      if right <= n && list[right] > list[i]
        large = right
      end

      if large != i
        list[large], list[i] = list[i], list[large]
      end
    end
  end
end
