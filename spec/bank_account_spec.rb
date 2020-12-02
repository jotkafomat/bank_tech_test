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

    it 'raises an error when input is not a digit' do

      expect { @my_new_account.add_deposit("asdfg") }.to raise_error("Input is not a digit")
    end
  end

  describe '#make_withdrawal' do
    it 'withdraws money from acount' do

      expect { @my_new_account.make_withdrawal(50) }.to change { @my_new_account.balance() }.by(-50)
    end
    it 'raises an error when input is not a digit' do

      expect { @my_new_account.make_withdrawal("asdfg") }.to raise_error("Input is not a digit")
    end
  end
end
