# Bank tech test plan

## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

## Other Specifications

- Must be a console application
- Print an account statement with date, amount, balance

# MVP

## Minimum

- The program has hard-coded transactions
- The program has a method to return a statement of existing transactions
- The transactions are displayed in reverse chronological order

## Functional

- There are methods to make deposits and withdrawals, which replace the hard-coded ones

# Plan

## Data
- Since I'm not using a database, transactions will be stored in the transactions hash

## Statement Class

- Contains the transactions hash
- prints the following line 'date || credit || debit || balance'
- A for loop iterates through the transaction hash and print:

'dd/mm/yyyy || || 000.00 || 0000.00'

Will satisfy the Minimum requirements.

## Deposit_Withdraw Class

- Creates transactions, which it pushes to the beginning of the transaction hash
- Has a method to make a Deposit
- Has a method to make a Withdrawal
- Has a balance variable
- These methods take the same argument (amount)
- They both call a method to save the date in dd/mm/yyyy format
- They push the formatted date, amount added or debited, and balance to the hash

------------------

# REFACTOR

  In laying out the responsibilities of my classes above, it became apparent that while a hash is an effective way of storing complex information, it is unnecessarily complicated for the purposes of this program.

  If the Deposit_Withdraw class stores information in a hash just so the Statement class can convert the hash into a string, then the hash is just creating more work, and can be skipped.

  Previous Plan:

  Deposit_Withdrawal----->Statement---------------------------------->
  variables -convert-> Array of hashes -convert-> string -read-> string

  Proposed Plan:
  Deposit_Withdraw------->Statement-------->
  variables -convert-> string -read-> string

------------------

# Updated Plan

## Data
- Instead of a database or a hash, transactions will be stored as an array of 'ready to print' strings

## Statement Class

- Reads and prints the transactions array of strings with the following string:

'date || credit || debit || balance'

Will still satisfy the Minimum requirements, and the class now follows the SRP.

## Deposit_Withdraw Class

Creates transactions, which it pushes to the beginning of the transactions array.

- Has a balance variable

Has methods that:
- Make a Deposit
- Make a Withdrawal
- Take the same argument (amount)
- Both call a method to save the date in dd/mm/yyyy format
- Both call a method to convert the variables to a string in the following format

'dd/mm/yyyy || || 000.00 || 0000.00'
or
'dd/mm/yyyy || 000.00 || || 0000.00'

- Push the formatted date, amount added or debited, and balance to the array

------------------

# Account class

  The statement class instantiates deposit_withdraw, but doesn't affect the contents, so the two classes are effectively isolated. To make new transactions and print a statement in the same session, the account class is needed to act as controller, instantiating the other two classes on a new session. Every necessary operation can then be completed from there.

- Has a method to call statement.show
- Has a method to call deposit_withdraw.withdraw
- Has a method to call deposit_withdraw.deposit


# Refactor

  Once the account class has been implemented, it's worth refactoring the classes to comply with good coding standards. Potential areas of concern are code that's easy to change, and the SRP.
