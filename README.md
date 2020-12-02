# BANK TECH TEST

## User stories:
#1
As a user
So that I can become a customer of the bank
I would like to be able to open an account

#2
As a bank administrator
So that I can adhere to regulations
I would like new accounts to have a balance 0 and no transaction

#3
As a Bank Customer
So that I can put money into my account
I would like to be able to make deposits

#4
As a Bank Customer
So that I can take money out of my account
I would like to be able to make withdrawals

#5
As a Bank Customer
So that I can check transactions on my account
I would like to be able to print a statement

#6
As a Bank Customer
So that I can recognise transactions on my statement
I would like to be able to see the date and type of transaction on the statement as:
(date || credit || debit || balance)

#7
As a Bank Customer
So that I can see the history of my transactions
I would like transactions on my statement to be in chronological order

I followed the user stories by feature tests in playground_aka_feature_test and then I followed TDD.

## How to use app:
1. open bank_account.rb in irb
2. create new account - new_account = BankAccount.new
3. to add deposit to the account - new_account.add_deposit(100)
4. to withdraw money from account - new_account.make_withdrawal(30)
5. to see statement - new_account.print_statement

##Code structure:
![code structure](class_diagram.png)

## Running tests
- bundle install
- rspec
