require 'minitest/autorun'

file = File.readlines(File.join(File.dirname(__FILE__),'input.txt'))

def count_passphrase(file)
  total = 0
  arr =[]
  file.each do |line|
    arr << line.split
  end
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
    @file = File.readlines(File.join(File.dirname(__FILE__),'test.txt'))
  end

  def test_checksum
    assert_equal  2, count_passphrase(@file)
  end
end
