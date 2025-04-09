require 'minitest/autorun'
require_relative '../sum_of_integers_in_string'

class TestSumOfIntegersInString < Minitest::Test

  #empty string should return 0
  def test_empty_number
    assert_equal 0, SumOfIntegersInString.add("")
  end

  #number should return
  def test_single_number
    assert_equal 1, SumOfIntegersInString.add("1")
  end

  #character with number should fail
  def test_single_number_with_char
    assert_equal 1, SumOfIntegersInString.add("a1")
  end

end