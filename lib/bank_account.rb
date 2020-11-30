class BankAccount

  attr_reader :balance, :transactions

  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
  end
end
