require 'minitest/autorun'
require File.expand_path('../../lib/account_id_verification_process', __FILE__)

class AccountIdVerificationProcessTest < MiniTest::Test

  def test_invalid_values
    [
      " ",
      "a",
      "-a",
      "-",
      "+",
      "-1",
      "1a",
      "1a1",
      "1aa1",
      "-1a",
      "-0",
      "-01",
      "-0s1"
    ].each do |string|
      value = AccountIdVerificationProcess.process string
      assert_equal value, false
    end
  end

  def test_valid_values
    [
      "1\n\r",
      "1",
      "11"
    ].each do |string|
      value = AccountIdVerificationProcess.process string
      assert_equal value, true
    end
  end

end
