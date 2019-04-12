require 'account'
require 'transaction'
require 'statement'

describe 'User can make a deposit' do
  it 'Pushes the transaction to the top of transactions' do
    @a = Account.new
    var = rand(5_000_000)
    @a.deposit(var)
    expect(@a.transaction.transactions).to include(
      "#{DateTime.now.strftime('%d/%m/%Y')} || #{var}.00 || || #{2500 + var}.00"
    )
  end
end
