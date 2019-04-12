# Bank tech test

# Installation

- Clone this repo
- Navigate to the root in console
- In console `bundle install`

# Running tests

Once installed:
- `rspec` to run tests
- `rubocop` to run the linter

# Running the program

From the root, in the console, run
- `irb`
- `load './lib/account.rb'`
- `require 'date'`

## What

A console application that has the functionality of an ATM.

## Why

- Practise for tech tests
- Demonstrating OOP and TDD

# Specification

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

# Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

# Progress

Hit Minimum described in plan, plus the withdraw and deposit methods described.

# Approach & Structure

See plan.md
