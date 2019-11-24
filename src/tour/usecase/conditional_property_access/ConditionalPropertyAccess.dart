class SomeClass {
  void someMethod() {}
}

class MyObject {
  SomeClass myProperty;

  void someMethod() {
    print("call");
  }
}

void conditionalPropertyAccess() {
  var myObject = new MyObject();

  myObject
      ?.myProperty; //null 일 수있는 객체의 속성이나 메서드에 대한 액세스를 보호하려면 ?점 ( .) 앞에 물음표 ( )를 넣으십시오 .

  myObject?.myProperty?.someMethod(); //null 체크를 하며 , 연속 호출 가능
}
