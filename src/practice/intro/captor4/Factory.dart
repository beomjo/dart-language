import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  @override
  num get area => pow(side, 2);
}

//Option 1
Shape shapeFactory(String type) {
  if (type == 'circle')
    return Circle(2);
  else if (type == 'square')
    return Square(2);
  else
    throw 'Not Surpported $type';
}

void main() {
  //no Use Factory
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);

  // \n
  print('');

  //use Option 1
  final fCircle = shapeFactory('circle');
  final fSquare = shapeFactory('square');
  print(fCircle.area);
  print(fSquare.area);
}
