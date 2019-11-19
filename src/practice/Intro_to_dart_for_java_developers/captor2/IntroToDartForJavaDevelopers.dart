import 'dart:math';

import 'Bicycle.dart';
import '../captor3/Rectangle.dart';

void main() {
  var bike = new Bicycle(2, 1);
  bike.speedUp(10);
  print(bike);
  bike.applyBrake(10);
  print(bike);

  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}
