require_relative 'statement'
require_relative 'transaction'

class Account
  attr_reader :dw
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
