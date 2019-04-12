# Class responsible for populating the transactions array
class Transaction
  attr_reader :transactions

  def initialize
    @balance = 2500
    @transactions = ["14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00
       || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"]
  end

  def deposit(amount)
    @balance += amount
    @transactions.insert(0, DateTime.now.strftime('%d/%m/%Y') + ' || ' +
    amount.to_s + '.00' + ' || || ' + @balance.to_s + '.00')
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.insert(0, DateTime.now.strftime('%d/%m/%Y') + ' || || ' +
    amount.to_s + '.00' + ' || ' + @balance.to_s + '.00')
  end
end
