class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

main(List<String> args) {
  callSequnce();

  typeCheck();
}

void typeCheck() {
  AB ab = AB();

  print(ab is P);
  print(ab is A);
  print(ab is B);

  BA ba = BA();

  print(ba is P);
  print(ba is A);
  print(ba is B);
}

void callSequnce() {
   String result = '';

  AB ab = AB();
  result += ab.getMessage();

  BA ba = BA();
  result += ba.getMessage();

  print(result);

  // 가장 마지막에 선언된 것이 우선됨
}