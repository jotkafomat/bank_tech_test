# BANK TECH TEST

## About
A bank program which allows the user to create a bank account, add deposit, make withdrawal  and print a statement.

## **Specification**

### **Requirements**

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### **Acceptance criteria followed:**

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## How to use app:
1. clone project and install bundle
2. open bank_account.rb in irb
3. create new account - new_account = BankAccount.new
4. to add deposit to the account - new_account.add_deposit(100)
5. to withdraw money from account - new_account.make_withdrawal(30)
6. to see statement - new_account.print_statement


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

## Approach
I followed the user stories by feature tests in playground_aka_feature_test and then I followed TDD.


### Code structure:
![code structure](class_diagram.png)

## Running tests
- bundle install
- rspec
