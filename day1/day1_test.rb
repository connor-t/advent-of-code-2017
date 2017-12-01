require "minitest/autorun"
# require_relative "day1-p1"
require_relative "day1-p2"

class Day1Test < MiniTest::Test

  def part2_test
    assert_equal 4, captcha_sum(12131415)
  end

end
