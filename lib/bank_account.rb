require_relative './withdrawal.rb'
require_relative './deposit.rb'

class BankAccount

  attr_reader :transactions, :initial_balance

  def initialize
    @transactions = []
  end

  def add_deposit(amount)
    raise "Input is not a digit" unless amount.is_a? Numeric

    new_deposit = Deposit.new(amount)
    new_deposit.account_balance += balance()
    @transactions.push(new_deposit)
  end

  def make_withdrawal(amount)
    raise "Input is not a digit" unless amount.is_a? Numeric

    new_withdrawal = Withdrawal.new(amount * -1)
    new_withdrawal.account_balance += balance()
    @transactions.push(new_withdrawal)
  end

  def balance
    transactions
      .map { |transaction| transaction.amount }
      .sum
  end

  def print_statement
    new_statement = Statement.new
    puts new_statement.show_statement(self)
  end
end
