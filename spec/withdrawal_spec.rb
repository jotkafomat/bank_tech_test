require 'withdrawal'
require 'date'

describe Withdrawal do

  before(:each) do
    @new_withdrawal = Withdrawal.new(50)
  end

  before do
    Timecop.freeze(Time.now)
  end

  after do
   Timecop.return
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

      date = @new_withdrawal.date.strftime("%d/%m/%Y")
      withdrawal_amount = '%.2f' % -@new_withdrawal.amount

      expect(@new_withdrawal.string_converter()).to eq "#{date} || || #{withdrawal_amount} || "
    end
  end
end
