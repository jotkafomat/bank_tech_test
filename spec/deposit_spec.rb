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

      date = Date.new
      expect(@new_deposit.date).to eq date
    end
  end
end
