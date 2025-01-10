function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return foo(x);
  }
}

HH
// This will cause a stack overflow error in HHVM, but not in Hack.  The reason is that HHVM does not perform tail-call optimization.
// Hack does perform tail-call optimization.
// However, Hack does not handle recursive function calls that cause stack overflow well.
// Note that if foo() is inlined into bar(), the stack overflow will still occur even in Hack.

function main(): void {
  echo bar(1000);
}
