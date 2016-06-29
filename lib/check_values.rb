class CheckValues
  def initialize str, regexp
    @value        = str
    @valid_values = regexp
  end

  def self.process str, regexp
    new(str, regexp).process
  end

  def process
    remove_tabs
    valid_value?
  end

  private
  def remove_tabs
    @value.gsub!(/\t|\n|\r/, '')
  end

  def valid_value?
    (@value =~ @valid_values) == 0
  end
end
