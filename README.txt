A simple command line utility to roll dice, written to play around with Haskell.

* Usage

./dice x y [z]

where x, y, and z are integers -- x is the number of dice to roll, and y is the number of sides the rolled die has (so, in the standard notation xDy). 

z is optional, and is the number of times that xDy roll should be made. If it is left off, then the dice will be rolled once.

For example, the standard two six-sided dice in Monopoly would be rolled like this: ./dice 2 6. Three rolls of four eight-sided dice would be ./dice 4 8 3.

The total value of the roll, and the individual die values, are printed.