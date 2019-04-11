require_relative 'transaction'

class Statement

  def initialize
    @d = DepositWithdraw.new
  end

  def show
    p "date || credit || debit || balance\n" + @d.transactions[0]
  end

end
