require 'bank_account'

describe BankAccount do

  before(:each) do
    @my_new_account = BankAccount.new
  end

  let(:deposit) { double :deposit }
  let(:withdrawal) { double :withdrawal }

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

      expect(Deposit).to receive(:new).and_return(deposit)
      expect(deposit).to receive(:amount).and_return(100)

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.balance() }.by(100)
    end

    it 'adds deposit amount to the account balance' do

      expect(Deposit).to receive(:new).and_return(deposit)

      expect { @my_new_account.add_deposit(100) }.to change { @my_new_account.transactions.length }.by(1)
    end

    it 'adds deposit transaction to the transactions array' do

      expect(Deposit).to receive(:new).and_return(deposit)
      @my_new_account.add_deposit(100)

      expect(@my_new_account.transactions.include?(deposit)).to eq true
    end
  end

  describe '#make_withdrawal' do
    it 'withdraws money from acount' do
      expect(Withdrawal).to receive(:new).and_return(withdrawal)
      expect(withdrawal).to receive(:amount).and_return(-50)

      expect { @my_new_account.make_withdrawal(50) }.to change { @my_new_account.balance() }.by(-50)
    end

  end

end
