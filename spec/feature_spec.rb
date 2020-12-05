require 'bank_account'

describe 'FeatureTests' do

  let(:my_new_account) { BankAccount.new }

  before(:each) do
    Timecop.freeze(Time.now)
  end

  after do
   Timecop.return
  end

  it 'user can create Bank Account' do

    expect(my_new_account).to be_a(BankAccount)
  end

  it 'user can add deposit to the bank account' do

    my_new_account.add_deposit(50)

    expect(my_new_account.balance).to eq (50)
  end

  it 'user can make withdrawal to the bank account' do

    my_new_account.make_withdrawal(50)

    expect(my_new_account.balance).to eq (-50)
  end

  it 'user can make make several transactions to the bank_account' do
    my_new_account.add_deposit(200)
    my_new_account.make_withdrawal(10)
    my_new_account.make_withdrawal(30)
    my_new_account.make_withdrawal(50)
    my_new_account.add_deposit(40)

    expect(my_new_account.balance).to eq (150)
  end

  it 'user can print statement' do
    my_new_account.add_deposit(200)
    my_new_account.make_withdrawal(10)
    my_new_account.add_deposit(40)
    date = Time.now.strftime("%d/%m/%Y")

    expect{ my_new_account.print_statement }.to output("date || credit || debit || balance\n#{date} || 40.00 || || 230.00\n#{date} || || 10.00 || 190.00\n#{date} || 200.00 || || 200.00\n").to_stdout
  end
end
