class BankAccount

  attr_reader :transactions
  attr_accessor :balance

  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
  end

  def deposit(amount)
    self.balance += amount
  end
end
