class MaxHeap

  def initialize(list)
    @list = list
    @n = list.size - 1
    build_max_heap
  end

  def list
    @list
  end

  def shift
    @list[0], @list[@n] = @list[@n], @list[0]
    value = @list[@n]
    @n = @n - 1
    help(list, @n, 0)
    value
  end

  private

  def build_max_heap
    size = list.length
    mid = size / 2
    mid.downto(0) do |i|
      help(list, size - 1, i)
    end
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

    if right <= n && list[right] > list[large]
      large = right
    end

    if large != i
      list[large], list[i] = list[i], list[large]
      help(list, n, large)
    end
  end
end
