class DpCombiningCharacter

  def initialize(source)
    @source = source
    @mapping = ['', '', 'abc', 'def', 'ghi', 'jkl', 'mno',
     'pqrs', 'tuv', 'wxyz']
  end

  def combine
    array = []
    result = []
    items = @source.split('')

    help(items, items.size - 1, result, array)

    array
  end

  def help(source_array, index, result, array)
    if index == 0
      number = source_array[0]
      @mapping[number].split('').each do |x|
      end
    else
    end
  end
end
