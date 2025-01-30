# Ada Integer Overflow Example

This repository demonstrates a common programming error in Ada: integer overflow. The `bug.ada` file contains a program that attempts to increment the maximum value of an integer, leading to a runtime error.  The `bugSolution.ada` file provides a solution that handles potential overflow using exception handling or by using a larger integer type.

## How to Reproduce

1. Compile and run `bug.ada`.
2. Observe the Constraint_Error exception.

## Solution

The `bugSolution.ada` file demonstrates a possible solution, using exception handling or switching to a larger integer type to handle the possibility of overflowing.