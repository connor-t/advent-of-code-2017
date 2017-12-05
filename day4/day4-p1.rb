require 'minitest/autorun'

file = File.read(File.join(File.dirname(__FILE__),'input.txt')).each_line.map(&:split)

def count_passphrase(arr)
  total = 0
  arr.each do |x|
    if x.uniq.length == x.length
      total += 1
    end
 end
  total
end

puts count_passphrase(file)

class Day4Test < MiniTest::Test
  def setup
    @file = File.read(File.join(File.dirname(__FILE__),'test.txt')).each_line.map(&:split)
  end

  def test_checksum
    assert_equal  2, count_passphrase(@file)
  end
end
