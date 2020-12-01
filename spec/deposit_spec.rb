require 'deposit'
require 'date'

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

  describe '#string_coverter' do
    it 'converts Deposit to string' do

      expect(@new_deposit.string_coverter).to eq "#{@new_deposit.date.strftime("%d/%m/%Y")} || 100.00 || || 100.00"
    end
  end

end
