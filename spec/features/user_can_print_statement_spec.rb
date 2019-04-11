require 'account'
require 'transaction'
require 'statement'

require 'date'

describe "User can print a statement" do
  it 'Outputs date, amount deposited or withdrawn, and balance' do
    @a = Account.new
    # expect(a.statement).to output(/date || credit || debit || balance/).to_stdout
    # expect(print "uh").to output("uh").to_stdout
    expect(@a.statement).to eq("date || credit || debit || balance" + "\n" + @a.dw.transactions[0])
  end
end
