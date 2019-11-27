main() {
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  ///컴파일 타임 상수const 가 될 변수에 사용하십시오 .
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  ///const키워드는 상수 변수를 선언하기위한 것이 아닙니다.
  ///상수 값 을 생성하고 상수 값 을 생성하는 생성자를 선언하는 데 에도 사용할 수 있습니다
  ///. 모든 변수는 상수 값을 가질 수 있습니다.
  var foo = const [];
  final bars = const [];
  const baz = []; // Equivalent to `const []`

  //  name = 'Alice'; // Error: a final variable can only be set once.


  // Valid compile-time constants as of Dart 2.5.
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: "int"}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}
