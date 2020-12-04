require 'deposit'
require 'date'
require 'transaction'

describe Deposit do

  before(:each) do
    Timecop.freeze(Time.now)
    @new_deposit = Deposit.new(100)
  end

  after do
   Timecop.return
  end

  describe '#to_s' do

    it 'converts class instance to a string' do
      date = Time.now.strftime("%d/%m/%Y")

      expect(@new_deposit.to_s()).to eq "#{date} || 100.00 || || "
    end
  end
end
