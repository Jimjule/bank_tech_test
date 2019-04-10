require './statement'
require './deposit_withdraw'

class Account
  def initialize
    @s = Statement.new
    @dw = DepositWithdraw.new
  end

  def statement
    @s.show
  end

  def withdraw(amount)
    @dw.withdraw(amount)
  end

  def deposit(amount)
    @dw.deposit(amount)
  end

end
