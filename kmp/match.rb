
class Match
  attr_accessor :source, :target

  def initialize(source, target)
    @source = source
    @target = target
  end

  # 朴素的模式匹配算法
  def simple
    i, j = 0, 0
    source_length = @source.length - 1
    target_length = @target.length - 1

    return false if target_length > source_length

    while i <= source_length && j <= target_length
      if @source[i] == @target[j]
        i += 1
        j += 1
      else
        i = i - j + 1
        j = 0
      end
    end

    # Attention: 由于最后 j + 1了，所以其值应该等于 target_length + 1
    if j == target_length + 1
      return i - j
    else
      return  false
    end
  end

  def get_next
  end

end
