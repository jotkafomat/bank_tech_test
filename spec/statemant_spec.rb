require 'statement'
require 'timecop'

describe Statement do

  before do
    Timecop.freeze(Time.now)
  end

  after do
   Timecop.return
  end

  it 'shows all transactions on bank account' do


    new_withdrawal = double :withdrawal
    new_deposit = double :deposit
    date = Time.now.strftime("%d/%m/%Y")
    allow(new_deposit)
      .to receive(:to_s)
      .and_return("#{date} || 50.00 || || ")
      allow(new_deposit).to receive(:amount).and_return(50.00)
    allow(new_withdrawal)
      .to receive(:to_s)
      .and_return("#{date} || || 20.00 || ")
      allow(new_withdrawal).to receive(:amount).and_return(-20.00)

    transactions = [new_withdrawal, new_deposit]
    new_statement = Statement.new(transactions)

    expect(new_statement.show_statement)
      .to eq "date || credit || debit || balance\n#{date} || || 20.00 || 30.00\n#{date} || 50.00 || || 50.00"
  end
end
