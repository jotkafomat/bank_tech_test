require 'bank_account'

describe BankAccount do

  before(:each) do
    @my_new_account = BankAccount.new
  end

  describe '#initialize' do

    it 'initializes with balance equal 0' do

      expect(@my_new_account.balance).to eq 0
    end

    it 'initializes with balance equal 0' do

      expect(@my_new_account.transactions).to eq []
    end

  end
end
