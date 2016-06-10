class CombiningCharacter

  def initialize(source)
    @source = source
    @mapping = ['', '', 'abc', 'def', 'ghi', 'jkl', 'mno',
     'pqrs', 'tuv', 'wxyz']

  end

  ##
  # 递归实现的基本逻辑:
  # 1. 获取数字对应的字符串，然后从该字符串中获取一个字符
  # 2. 递增到下一个数字对应的字符，获取一个字符
  # 基本思路跟数组组合一样
  def combine
    array = []
    result = []

    help(@source.split(''), 0, result, array)

    array
  end

  def help(source_array, index, result, array)
    if index == @source.size
      array << result.join() and return
    end

    number = source_array[index]
    tmp = @mapping[number.to_i]

    # 1 因为对应空字符串，所有不会运行下面的代码，需要修正
    #tmp.split('').each do |char|
      #result << char
      #help(source_array, index + 1, result, array)
      #result.pop
    #end

    size = tmp.split('').size
    if size == 0
      help(source_array, index + 1, result, array)
    else
      tmp.split('').each do |char|
        result << char
        help(source_array, index + 1, result, array)
        result.pop
      end
    end
  end
end
