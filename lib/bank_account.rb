require_relative './withdrawal.rb'
require_relative './deposit.rb'

class BankAccount

  attr_reader :transactions, :initial_balance

  def initialize
    @transactions = []
  end

  def add_deposit(amount)
    new_deposit = Deposit.new(amount)
    new_deposit.account_balance += balance()
    @transactions.push(new_deposit)
  end

  def make_withdrawal(amount)
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
    "date || credit || debit || balance\n" + transactions.reverse_each.map { |transaction| transaction.string_coverter }.join("\n")
  end

  def statement
    puts print_statement()
  end

end
