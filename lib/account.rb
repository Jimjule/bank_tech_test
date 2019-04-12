require_relative 'statement'
require_relative 'transaction'

# Controller class, instantiates other classes and calls their methods
class Account
  attr_reader :transaction
  def initialize
    @statement = Statement.new
    @transaction = Transaction.new
  end

  def statement
    @statement.show
  end

  def withdraw(amount)
    @transaction.withdraw(amount)
  end

  def deposit(amount)
    @transaction.deposit(amount)
  end
end
