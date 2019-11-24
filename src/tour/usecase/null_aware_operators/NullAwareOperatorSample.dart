void null_aware_operators() {
  //널 인식 연산자
  int a; // The initial value of a is null.
  a ??= 3;
  print(a); // <-- Prints 3.

  a ??= 5;
  print(a); // <-- Still prins 3.

  print(1 ?? 3); // <-- Prints 1.
  print(null ?? 12); // <-- Prints 12.
}

main(){
  null_aware_operators();
}