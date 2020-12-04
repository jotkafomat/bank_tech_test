require 'bank_account'


describe BankAccount do

  before(:each) do
    @my_new_account = BankAccount.new
  end

  describe '#add_deposit' do

    it 'adds funds to account balance' do

      deposit_class_double = double :deposit_class_double
      account = BankAccount.new(deposit_class_double)

      expect(deposit_class_double).to receive(:new).with(100)

      account.add_deposit(100)
    end

    it 'adds deposit transaction to the transactions array' do

      deposit_double = double :deposit, amount: 100
      deposit_class_double = double :deposit_class_double, new: deposit_double
      account = BankAccount.new(deposit_class_double)

      account.add_deposit(100)

      expect(account.balance()).to eq(100)
    end

    it 'raises an error when input is not a digit' do

      expect { @my_new_account.add_deposit("asdfg") }.to raise_error("Input is not a digit")
    end
  end

  describe '#make_withdrawal' do

    it 'withdraws money from acount' do

      withdrawal_class_double = double :withdrawal_class_double
      deposit_class_double = double :deposit_class_double
      account = BankAccount.new(deposit_class_double, withdrawal_class_double)

      expect(withdrawal_class_double).to receive(:new).with(-100)

      account.make_withdrawal(100)
    end

    it 'adds withdrawal transaction to the transactions array' do

      withdrawal_double = double :withdrawal, amount: -100
      withdrawal_class_double = double :withdrawal_class_double, new: withdrawal_double
      deposit_class_double = double :deposit_class_double
      account = BankAccount.new(deposit_class_double, withdrawal_class_double)

      account.make_withdrawal(100)

      expect(account.balance).to eq(-100)
    end

    it 'raises an error when input is not a digit' do

      expect { @my_new_account.make_withdrawal("asdfg") }.to raise_error("Input is not a digit")
    end
  end
end
