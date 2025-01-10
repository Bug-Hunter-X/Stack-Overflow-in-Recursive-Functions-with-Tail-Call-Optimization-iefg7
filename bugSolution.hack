function foo(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return foo(x);
  }
}

HH
// This solution uses iteration instead of recursion to prevent stack overflow.

function main(): void {
  echo bar(1000);
}
