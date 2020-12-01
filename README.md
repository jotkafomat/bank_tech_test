
User stories:
#1
As a Bank Customer
To have ability to use an account
I would like to open an Account
#2
As a Bank Admin

I would like to customers have a balance 0 and transaction 0

#3
As a Bank Customer
to put money into my Account
I would like to deposit money

#4
As a Bank Customer
to take out money from my Account
I would like to withdraw money

#5
As a Bank Customer
to check transaction on my Account
I would like to print a bank statement

#6
As a Bank Customer
to recognise transaction on the statement
I would like to see date and type of transaction on the statement
(date || credit || debit || balance)

#7
As a Bank Customer
to see a history of my transaction
I would like to see them in chronological order on the statement

I followed user stories followed by feature tests in the playground_aka_feature_test then TDD.

How to use app:
1. open bank_account.rb in rb
2. create new account - new_account = BankAccount.new
3. to add deposit to the account - new_account.add_deposit(100)
4. to withdraw money from account - new_account.make_withdrawal(30)
5. to see statement - new_account.statement

Code structure:
![code structure](class_diagram.png)
