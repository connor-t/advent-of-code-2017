require 'minitest/autorun'

file = File.readlines(File.join(File.dirname(__FILE__),'input.txt'))

def get_checksum(file)
  sum = 0
  arr = []
  file.each do |line|
    a =  line.split
    arr << line.split.map(&:to_i)
  end
  arr.each do |x|
    sum += (x.max - x.min)
  end
  sum
end

puts get_checksum(file)

class Day2Test < MiniTest::Test
  def setup
    @file = File.readlines(File.join(File.dirname(__FILE__),'test.txt'))
  end

  def test_checksum
    assert_equal  18, get_checksum(@file)
  end
end
