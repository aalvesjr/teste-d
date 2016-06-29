require File.expand_path('../check_values', __FILE__)

class AccountIdVerificationProcess
  VALID_VALUES = /^\d+$/

  def self.process str
    CheckValues.process str, VALID_VALUES
  end
end
