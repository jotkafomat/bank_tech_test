class Transaction

  attr_reader :amount

  def initialize(amount)
    @amount = amount
    @date = Time.now
  end

end
