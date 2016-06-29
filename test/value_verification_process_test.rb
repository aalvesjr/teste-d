require 'minitest/autorun'
require File.expand_path('../../lib/value_verification_process', __FILE__)

class ValueVerificationProcessTest < MiniTest::Test

  def test_invalid_values
    [
      " ",
      "a",
      "-a",
      "-",
      "+",
      "1a",
      "1a1",
      "1aa1",
      "-1a",
      "-0s1"
    ].each do |string|
      value = ValueVerificationProcess.process string
      assert_equal value, false
    end
  end

  def test_valid_values
    [
      "1\n\r",
      "1",
      "-1",
      "11",
      "-0",
      "-01"
    ].each do |string|
      value = ValueVerificationProcess.process string
      assert_equal value, true
    end
  end

end
