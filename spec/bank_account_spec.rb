require 'bank_account'

describe BankAccount do

  describe '#initialize' do

    it 'initializes with balance equal 0' do

      my_new_account = BankAccount.new
      expect(my_new_account.balance()).to eq 0
    end


  end
end
