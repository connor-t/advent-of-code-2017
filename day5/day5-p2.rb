require 'minitest/autorun'

file = File.read(File.join(File.dirname(__FILE__),'input.txt')).each_line.map(&:to_i)

def step_counter(arr)
  total = 0
  index = 0

  while index < arr.length
    jump = arr[index]
    if arr[index] > 2
      arr[index] -= 1
    else
      arr[index] += 1
    end
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

  def test_step_counter
    assert_equal  10, step_counter(@file)
  end
end
