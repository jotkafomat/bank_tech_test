class BankAccount

  attr_reader :transactions, :initial_balance


  def initialize
    @transactions = []
  end

  def deposit(amount)
    @transactions.push(Deposit.new(amount))
  end

  def balance
    transactions
      .map { |transaction| transaction.amount }
      .sum
  end
end
