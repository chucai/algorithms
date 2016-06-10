class CombiningCharacter

  def initialize(source)
    @source = source
    @mapping = ['', '', 'abc', 'def', 'ghi', 'jkl', 'mno',
     'pqrs', 'tuv', 'wxyz']

  end

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
    tmp.split('').each do |char|
      result << char
      help(source_array, index + 1, result, array)
      result.pop
    end

  end
end
