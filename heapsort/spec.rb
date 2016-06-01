require 'minitest/autorun'

require_relative 'main'

describe Main do
  before do
  end

  it 'will build a heap' do
    input = [1,2,3]
    output = Main.build_max_heap(input)
    output.must_equal [3, 2, 1]
  end
end
