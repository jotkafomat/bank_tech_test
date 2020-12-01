class Deposit

  attr_reader :amount, :date
  attr_accessor :account_balance

  def initialize(amount)
    @amount = amount
    @date = Time.now
    @account_balance = amount
  end
end
