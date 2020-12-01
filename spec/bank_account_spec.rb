require 'bank_account'

describe BankAccount do

  before(:each) do
    @my_new_account = BankAccount.new
  end

  describe '#initialize' do

    it 'initializes with balance equal 0' do

      expect(@my_new_account.balance()).to eq 0
    end

    it 'initializes with no transactions on account' do

      expect(@my_new_account.transactions).to eq []
    end
  end

  describe '#add_deposit' do

    it 'adds funds to account balance' do

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.balance() }.by(100)
    end

    it 'adds deposit amount to the account balance' do

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.transactions.length }.by(1)
    end

    it 'adds deposit transaction to the transactions array' do

      @my_new_account.add_deposit(100)

      expect(@my_new_account.transactions[0]).to be_instance_of(Deposit)
    end
  end

  describe '#make_withdrawal' do
    it 'withdraws money from acount' do

      expect { @my_new_account.make_withdrawal(50) }.to change { @my_new_account.balance() }.by(-50)
    end
  end

  describe '#print_statement' do

    it 'prints head of the statement and one deposit transaction' do
      @my_new_account.add_deposit(100)
      date = @my_new_account.transactions[0].date.strftime("%d/%m/%Y")
      amount = '%.2f' % @my_new_account.transactions[0].amount
      balance = '%.2f' % @my_new_account.transactions[0].account_balance

      expect(@my_new_account.print_statement()).to eq "date || credit || debit || balance\n#{date} || #{amount} || || #{balance}"
    end

    it 'prints head of the statement and one deposit transaction' do
      @my_new_account.make_withdrawal(50)
      date = @my_new_account.transactions[0].date.strftime("%d/%m/%Y")
      amount = '%.2f' % (@my_new_account.transactions[0].amount * -1)
      balance = '%.2f' % @my_new_account.transactions[0].account_balance

      expect(@my_new_account.print_statement()).to eq "date || credit || debit || balance\n#{date} || || #{amount} || #{balance}"
    end

  end

end
