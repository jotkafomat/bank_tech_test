require_relative './transaction.rb'
require_relative './withdrawal.rb'
require_relative './deposit.rb'
require_relative './statement.rb'

class BankAccount

  def initialize(deposit = Deposit, withdrawal = Withdrawal)
    @transactions = []
    @deposit = deposit
    @withdrawal = withdrawal
  end

  def add_deposit(amount)
    raise "Input is not a digit" unless amount.is_a? Numeric

    new_deposit = @deposit.new(amount)
    @transactions.unshift(new_deposit)
  end

  def make_withdrawal(amount)
    raise "Input is not a digit" unless amount.is_a? Numeric

    new_withdrawal = @withdrawal.new(amount * -1)
    @transactions.unshift(new_withdrawal)
  end

  def balance
    @transactions
      .map { |transaction| transaction.amount }
      .sum
  end

  def print_statement
    new_statement = Statement.new(@transactions)
    puts new_statement.show_statement
  end
end
