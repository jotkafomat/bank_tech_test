require 'bank_account'

describe BankAccount do

  before(:each) do
    @my_new_account = BankAccount.new
  end

  let(:deposit) { double :deposit }

  describe '#initialize' do

    it 'initializes with balance equal 0' do

      expect(@my_new_account.balance() ).to eq 0
    end

    it 'initializes with no transactions on account' do

      expect(@my_new_account.transactions).to eq []
    end
  end

  describe '#add_deposit' do
    it 'adds funds to account balance' do

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.balance() }.by(100)
    end

    it 'adds deposit transaction to the transactions array' do

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.transactions.length }.by(1)
    end
  end
end
