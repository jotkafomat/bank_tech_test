require_relative './withdrawal.rb'
require_relative './deposit.rb'

class BankAccount

  attr_reader :transactions, :initial_balance

  def initialize
    @transactions = []
  end

  def add_deposit(amount)
    @transactions.push(Deposit.new(amount))
  end

  def make_withdrawal(amount)
    @transactions.push(Withdrawal.new(amount * -1))
  end

  def balance
    transactions
      .map { |transaction| transaction.amount }
      .sum
  end
end
