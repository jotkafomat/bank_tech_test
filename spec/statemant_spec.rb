require 'statement'

describe Statement do

  it 'shows all transactions on bank account' do
    new_withdrawal = double :withdrawal
    new_deposit = double :deposit
    date = Time.now.strftime("%d/%m/%Y")

    allow(new_deposit)
      .to receive(:string_converter)
      .and_return("#{date} || 50.00 || || 50.00")
    allow(new_withdrawal)
      .to receive(:string_converter)
      .and_return("#{date} || || 20.00 || 30.00")

    transactions = [new_deposit, new_withdrawal]

    expect(subject.show_statement(transactions))
      .to eq "date || credit || debit || balance\n#{date} || || 20.00 || 30.00\n#{date} || 50.00 || || 50.00"
  end
end
