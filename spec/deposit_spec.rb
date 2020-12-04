require 'deposit'
require 'date'
require 'transaction'

describe Deposit do

  before(:each) do
    @new_deposit = Deposit.new(100)
  end

  describe '#initialize' do

    it 'creates new instance of deposit with given amount' do

      expect(@new_deposit.amount).to eq 100
    end

    it 'creates new instance of deposit with current date' do

      expect(@new_deposit.date).to be_a(Time)
    end
  end

  describe '#string_converter' do

    it 'converts class instance to a string' do

      date = @new_deposit.date.strftime("%d/%m/%Y")
      deposit_amount = '%.2f' % @new_deposit.amount
      account_balance = '%.2f' % @new_deposit.account_balance

      expect(@new_deposit.string_converter()).to eq "#{date} || #{deposit_amount} || || #{account_balance}"
    end
  end
end
