class Deposit

  attr_reader :amount, :date
  attr_accessor :account_balance

  def initialize(amount)
    @amount = amount
    @date = Time.now
    @account_balance = amount
  end

  def string_coverter
    "#{date.strftime("%d/%m/%Y")} || #{'%.2f' % amount} || || #{'%.2f' % account_balance}"
  end
end
