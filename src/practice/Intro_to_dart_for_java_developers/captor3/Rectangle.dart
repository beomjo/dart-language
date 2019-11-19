import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  /**
   * dart  const와 final의 차이
   * https://medium.com/dartlang-korea/dart-final-%EA%B3%BC-const-bc8c6c024ef4
   * */

  @override
  String toString() =>
      "Origin : (${origin.x}, ${origin.y}), width : $width, hegiht : $height";
}
