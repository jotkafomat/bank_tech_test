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
end
