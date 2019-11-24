class SomeClass {
  void someMethod() {}
}

class MyObject {
  SomeClass myProperty;

  void someMethod() {
    print("call");
  }
}


class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList = [3, 0]
    ..allDone();
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

  var bigObject = fillBigObject(new BigObject());
  print(bigObject.anInt);
  print(bigObject.aString);
  print(bigObject.aList);
}

main(){
  cascades();
}
