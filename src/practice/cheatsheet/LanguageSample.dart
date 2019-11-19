import 'BigObject.dart';
import 'MyObject.dart';

main() {
  stringInterpolation();
  println();
  null_aware_operators();
  println();
  conditionalPropertyAccess();
  println();
  collectionLiterals();
  println();
  arrowSyntax();
  println();
  cascades();
}

void stringInterpolation() {
  print('${3 + 2}');
  print('${"word".toUpperCase()}');
}

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

void conditionalPropertyAccess() {
  var myObject = new MyObject();

  myObject
      ?.myProperty; //null 일 수있는 객체의 속성이나 메서드에 대한 액세스를 보호하려면 ?점 ( .) 앞에 물음표 ( )를 넣으십시오 .

  myObject?.myProperty?.someMethod(); //null 체크를 하며 , 연속 호출 가능
}

void collectionLiterals() {
  final aListOfStrings = ['one', 'two', 'three'];
  final aSetOfStrings = {'one', 'two', 'three'};
  final aMapOfStringsToInts = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  /*
   * 다트의 유형 유추는 위와같 변수에 유형을 할당 할 수 있습니다. 이 경우, 추론 유형은 List<String>, Set<String>하고 Map<String, int>.
   * 또는 아래와 같이 직접 유형을 지정할 수 있습니다.
   * */

  final aListOfInts = <int>[1, 2, 3, 4];
  final aSetOfInts = <int>{1, 1, 1, 1};
  final aMapOfIntToDouble = <int, double>{};
}

void arrowSyntax() {
  //=>다트 코드 에서 기호를 보았을 것 입니다. 이 화살표 구문은 표현식을 오른쪽으로 실행하고 값을 반환하는 함수를 정의하는 방법입니다.
  final aListOfStrings = ['one', 'two', 'three'];

  bool hasEmpty = aListOfStrings.any((s) {
    return s.isEmpty;
  });

  bool hasEmpty2 = aListOfStrings.any((s) => s.isEmpty);

  //위의 두 방법은 모두 같은 방법입니다.
}

void cascades() {
  //동일한 객체에서 일련의 작업을 수행하려면 계단식 ( ..)을 사용하십시오. 우리는 모두 다음과 같은 표현을 보았습니다.
  //자바의 Builder Pattern처럼 사용 가능합니다.
  //알아야 할 것은 리턴 타입이 자기 자신이 아니며 참조 라는 것입니다.

  final myObject = new MyObject();
  myObject..someMethod()..someMethod()..someMethod();

  /**
   * example))
   * var button = querySelector('#confirm');
      button.text = 'Confirm';
      button.classes.add('important');
      button.onClick.listen((e) => window.alert('Confirmed!'));

   *  아래와 같이 사용
   * querySelector('#confirm')
      ..text = 'Confirm'
      ..classes.add('important')
      ..onClick.listen((e) => window.alert('Confirmed!'));
   * */

  var bigObject =fillBigObject(new BigObject());
  print(bigObject.anInt);
  print(bigObject.aString);
  print(bigObject.aList);
}



BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList = [3, 0]
    ..allDone();
}

void println() {
  print('');
}
