require_relative 'transaction'

# Class responsible for printing the transactions array
class Statement
  def initialize
    @transaction = Transaction.new
  end

  def show
    p "date || credit || debit || balance\n" + @transaction.transactions[0]
  end
end
