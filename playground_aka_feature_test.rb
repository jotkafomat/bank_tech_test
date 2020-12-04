require 'date'
require_relative './lib/transaction.rb'
require_relative './lib/bank_account.rb'
require_relative './lib/deposit.rb'
require_relative './lib/withdrawal.rb'
require_relative './lib/statement.rb'

# date formatter
# date = Time.now
# p date.strftime("%d/%m/%Y")
# p date
#User_Story#1
my_new_account = BankAccount.new
#User_Story#2
p "initial balance: " + "#{my_new_account.balance}"
#User_Story#3
my_new_account.add_deposit(50)
p "balance after deposit: " + "#{my_new_account.balance}"
#User_Story#4
my_new_account.make_withdrawal(20)
p "balance after withdrawal: " + "#{my_new_account.balance}"
p "all transactions: " + "#{my_new_account.transactions}"
#User_Story#5,6,7
my_new_account.print_statement
