require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../sum_of_integers_in_string'
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

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

  def test_single_number
    assert_equal 5, SumOfIntegersInString.add("5")
  end

  def test_multiple_numbers
    assert_equal 15, SumOfIntegersInString.add("1,2,3,4,5")
  end

  def test_numbers_with_text
    assert_equal 6, SumOfIntegersInString.add("abc1xyz2lmn3")
  end

  def test_numbers_with_newlines_and_commas
    assert_equal 10, SumOfIntegersInString.add("1\n2,3\n4")
  end

  def test_negative_number_raises_exception
    error = assert_raises(RuntimeError) { SumOfIntegersInString.add("1,-2,3") }
    assert_equal "negative numbers not allowed -2", error.message
  end

  def test_multiple_negative_numbers_raise_exception
    error = assert_raises(RuntimeError) { SumOfIntegersInString.add("1,-2,-3") }
    assert_equal "negative numbers not allowed -2,-3", error.message
  end
end