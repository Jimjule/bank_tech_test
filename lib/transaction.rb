class DepositWithdraw

  attr_reader :transactions

  def initialize
    @transactions = ["14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"]
    @balance = 2500
  end

  def deposit(amount)
    @balance += amount
    current = DateTime.now.strftime("%d/%m/%Y") + ' || ' + amount.to_s + '.00' + ' || || ' + @balance.to_s + '.00'
    @transactions.insert(0, current)
  end

  def withdraw(amount)
    @balance -= amount
    current = DateTime.now.strftime("%d/%m/%Y") + ' || || ' + amount.to_s + '.00' + ' || ' + @balance.to_s + '.00'
    @transactions.insert(0, current)
  end
end
