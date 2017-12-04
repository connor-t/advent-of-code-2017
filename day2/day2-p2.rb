require 'minitest/autorun'

file = File.readlines(File.join(File.dirname(__FILE__),'input.txt'))

def get_divisor(file)
  sum = 0
  arr = []
  file.each do |line|
    a =  line.split
    arr << line.split.map(&:to_i)
  end
  arr.each do |line|
    line.each_with_index do |x, i|
      (0...line.length).each do |y|
        if i == y
        elsif x % line[y] == 0
          sum += (x / line[y])
        end
      end
    end
  end
  sum
end

puts get_divisor(file)

class Day2Test < MiniTest::Test
  def setup
    @file = File.readlines(File.join(File.dirname(__FILE__),'test2.txt'))
  end

  def test_divisor
    assert_equal  9, get_divisor(@file)
  end
end
