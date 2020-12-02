require 'withdrawal'
require 'date'

describe Withdrawal do

  before(:each) do
    @new_withdrawal = Withdrawal.new(50)
  end

  describe '#initialize' do

    it 'creates new instance of withdrawal with given amount' do

      expect(@new_withdrawal.amount).to eq 50
    end

    it 'creates new instance of withdrawal with current date' do

      expect(@new_withdrawal.date).to be_a(Time)
    end
  end

  describe '#string_converter' do

    it 'converts class instance to a string' do

      expect(@new_withdrawal.string_converter()).to eq "#{@new_withdrawal.date.strftime("%d/%m/%Y")} || || #{'%.2f' % -@new_withdrawal.amount} || #{'%.2f' % @new_withdrawal.account_balance}"
    end
  end
end
