# Stack Overflow in Recursive Functions with Tail-Call Optimization

This repository demonstrates a potential stack overflow error in Hack when dealing with recursive functions, even when tail-call optimization is in effect.  While Hack typically optimizes tail-recursive calls, certain scenarios, particularly when combined with function inlining or complex call stacks, can still lead to stack overflow issues.  The example shows a recursive function that calculates factorials and another function that utilizes this factorial function.  The problem is exacerbated when the input to the function exceeds a certain threshold, leading to a stack overflow.

## How to reproduce

1. Clone the repository.
2. Run the code using the Hack compiler and interpreter.
3. Observe the stack overflow error with large input values (e.g., 1000). 

## Solution

The solution involves refactoring the recursive function to an iterative approach, eliminating the risk of stack overflow. This ensures that the function correctly calculates the factorial for large input numbers without exceeding the call stack limit.