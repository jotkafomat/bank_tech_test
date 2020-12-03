class Deposit

  attr_reader :amount, :date
  attr_accessor :account_balance

  def initialize(amount)
    @amount = amount
    @date = Time.now
    @account_balance = amount
  end

  def string_converter
    date = @date.strftime("%d/%m/%Y")
    deposit_amount = '%.2f' % @amount
    account_balance = '%.2f' % @account_balance

    "#{date} || #{deposit_amount} || || #{account_balance}"
  end
end
