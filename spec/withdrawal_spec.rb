require 'withdrawal'
require 'date'

describe Withdrawal do

  before(:each) do
    Timecop.freeze(Time.now)
    @new_withdrawal = Withdrawal.new(-50)
  end

  after do
   Timecop.return
  end

  describe '#string_converter' do

    it 'converts class instance to a string' do
      date = Time.now.strftime("%d/%m/%Y")

      expect(@new_withdrawal.string_converter()).to eq "#{date} || || 50.00 || "
    end
  end
end
