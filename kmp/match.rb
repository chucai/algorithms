
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

  def target_size
    @target.length - 1
  end

  def get_next
    numbers = []
    0.upto(target_size) do |i|
      numbers << get_next_by_position(i)
    end
    numbers
  end

  def get_next_by_position(i)
    return 0 if i == 0
    common = get_common_string_of_target_by(i)
    larget_match_str = common.sort_by { |str| -str.size }.first || ''
    larget_match_str.size
  end

  def get_common_string_of_target_by(i)
    prefix = get_prefix_string_by_index(i)
    postfix = get_postfix_string_by_index(i)
    prefix & postfix
  end

  # 获取指定位置的target的所有前缀
  def get_prefix_string_by_index(i)
    prefix = []
    0.upto(i-1) do |j|
      prefix << @target[0..j]
    end
    prefix
  end

  # 获取指定位置的target的所有后缀
  def get_postfix_string_by_index(i)
    postfix = []
    i.downto(1) do |j|
      postfix << @target[j..i]
    end
    postfix
  end

end
