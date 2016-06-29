require File.expand_path('../check_values', __FILE__)

class ValueVerificationProcess
  VALID_VALUES = /^-\d+$|^\d+$/

  def self.process str
    CheckValues.process str, VALID_VALUES
  end
end
