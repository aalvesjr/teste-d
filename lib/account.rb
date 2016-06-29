class Account
  attr_reader :balance
  TAX = 500
  
  def initialize id, initial_amount
    @id = id 
    @balance = initial_amount.to_i
  end

  def add_transaction amount
    amount = amount.to_i
    @balance += amount

    apply_fine if amount < 0
  end

  private
  def apply_fine
    @balance -= TAX if @balance < 0
  end
end
