require 'minitest/autorun'

file = File.read(File.join(File.dirname(__FILE__),'input.txt')).each_line.map(&:to_i)

def step_counter(arr)
  total = 0
  index = 0

  while index < arr.length
    jump = arr[index]
    arr[index] += 1
    index += jump
    total += 1
  end
  total
end

puts step_counter(file)

class Day5Test < MiniTest::Test
  def setup
    @file = File.read(File.join(File.dirname(__FILE__),'test.txt')).each_line.map(&:to_i)
  end

  def test_checksum
    assert_equal  5, step_counter(@file)
  end
end
