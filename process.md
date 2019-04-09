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

RED
- Prints:
date || credit || debit || balance
    14/01/2012 || || 500.00 || 2500.00
    13/01/2012 || 2000.00 || || 3000.00
    10/01/2012 || 1000.00 || || 1000.00 => nil
