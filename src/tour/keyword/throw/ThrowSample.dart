import 'dart:html';

//예외를 던지는 것은 표현식이므로 => 문과 표현식을 허용하는 다른 곳에서 예외를 throw 할 수 있습니다.
void distanceTo(Point other) => throw UnimplementedError();

main(){
  throw FormatException('Expected at least 1 section');
  throw 'Out of llamas!';
}