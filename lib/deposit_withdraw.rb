class DepositWithdraw

  attr_reader :transactions

  def initialize
    @transactions = ['14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00']
    @balance = 2500
  end

  def deposit(amount)
    # @transactions << '09/04/2019 || 5000.00 || || 7500.00'
    current = []
    @balance += amount
    current.push(DateTime.now.strftime("%d/%m/%Y") + ' || ' + amount.to_s + '.00' + ' || || ' + @balance.to_s + '.00')

    return current[0]
  end
end
