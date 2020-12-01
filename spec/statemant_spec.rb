require 'statement'

describe Statement do
  it 'shows all transactions on bank account' do
    new_account = BankAccount.new
    new_account.add_deposit(50)
    new_account.make_withdrawal(20)
    date = Time.now.strftime("%d/%m/%Y")


    expect(subject.show_statement(new_account)).to eq "date || credit || debit || balance\n#{date} || || 20.00 || 30.00\n#{date} || 50.00 || || 50.00"
  end
end
