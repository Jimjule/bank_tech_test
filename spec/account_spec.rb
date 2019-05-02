require 'account'

describe Account do
  it 'Calls statement' do
    statement = double(Statement)
    allow(statement).to receive(:show).and_return("Haeuieueee")
    a = Account.new(statement, Transaction.new)
    expect(a.statement).to eq('Haeuieueee')
  end
end
