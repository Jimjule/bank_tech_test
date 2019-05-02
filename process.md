# Process

# Screen Recording 1

FEATURE TEST
- Testing that statement.show returns:

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

RED
- Expected above, returned nil

show method prints the following:
date || credit || debit || balance

RED
- Prints 'date || credit || debit || balance => nil'

show method prints the following:
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

GREEN
- Prints:
date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00 => nil

-----------

# Screen Recording 2

FEATURE TEST
- Testing that statement.show returns the same result when reading the following statements from Deposit_Withdraw:

14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

RED
- Prints: 'date || credit || debit || balance => nil '

Created initialize method for DepositWithdraw class

RED
Undefined method 'transactions'

Placed class instance into initialize method

NEW RED

TypeError (no implicit conversion of Array into String)

Statement prints array[0] to target string

GREEN

-----------

# Screen Recording 3

FEATURE TEST
- Testing that deposit_withdraw.deposit adds the following string to transactions:
'09/04/2019 || 5000.00 || || 7500.00'

RED
undefined method 'deposit'

Made deposit method

NEW RED
Returns nil

Hard-coded the string

GREEN

REFACTOR

  Because the string is hard-coded, the method is not working per the required purpose

FEATURE TEST
Expect the deposit method to take the information it needs and format it before pushing

RED
NameError (uninitialized constant DepositWithdraw::DateTime)

-----------

# Screen Recording 4

Required 'date' when running irb

Successfully formats date as required

NEW RED
Doesn't include rest of string

Made method include ' || '

NEW RED
Doesn't include amount deposited

Added 'amount' argument to deposit

NEW RED
TypeError (no implicit conversion of Float into String)

Explicitly converted Float to string

NEW RED
Now just needs the balance

Added @balance, calculated by adding amount to previous balance

RED
Returns ["/09/04/2019 || 5000.00 || 7500.00"], need a string, not an array

Targeted array[0]

RED
Lacks debit field string and has an extra slash before the date

Added debit field and removed slash

GREEN

-----------

# Screen Recording 5

FEATURE TEST
- Expecting new transactions to be pushed to the front of the transactions array

RED
It is at the front, but not joined

Made current a string

GREEN


FEATURE TEST
- Withdraw method to deduct money from the account and push to transactions

Copied deposit method, changed to withdraw, now - not +, and renamed current

GREEN

FEATURE TEST
- Testing withdraw and deposit together, working as intended

GREEN


FEATURE TEST
- Testing that Statement class works with new deposit and withdraw methods

RED
These classes do not work together because the statement class calls a new instance of deposit_withdraw when run. A higher-level class is needed to instantiate and control both classes.

-----------

# Screen Recording 6

FEATURE TEST
- Account class can call the statement.show method

RED
No such method

Defined method

NEW RED
Returns nil

Connected the class, initialized the statement class and called it in the method

GREEN

FEATURE TEST
- Has a method to call deposit_withdraw.withdraw

RED
No such method

Defined method, connected the class, initialized DepositWithdraw class and called in method

GREEN

FEATURE TEST
- Has a method to call deposit_withdraw.deposit

Defined method, connected the class, initialized DepositWithdraw class and called in method

GREEN


REFACTOR
- Removed extra code from deposit_withdraw to streamline methods

FEATURE TEST
Still working

GREEN

Installed simplecov

TEST
- Automate feature test with rspec
- Tests Account statement method behaves as expected

Three feature tests added to replace console tests, 100% coverage.

GREEN


REFACTOR

- Updated DepositWithdraw class name to Transaction to reflect the purpose.
- Gave descriptive names to instantiated classes


REFACTOR
- Injected the two other classes into the Account class to remove dependency
- Doubled the classes in unit tests
