import 'dart:async';

main() {
  final sc = StreamController.broadcast();
  final broadcastStream = sc.stream;

  broadcastStream
      .where((value) => value % 2 == 0) // divisible by 2
      .listen((value) => print("where: $value"));
  // where: 2
  // where: 4

  broadcastStream
      .take(3) // takes only the first three elements
      .listen((value) => print("take: $value"));
  // take: 1
  // take: 2
  // take: 3

  broadcastStream
      .skip(3) // skips the first three elements
      .listen((value) => print("skip: $value"));
  // skip: 4
  // skip: 5

  broadcastStream
      .takeWhile((value) => value < 3) // take while true
      .listen((value) => print("takeWhile: $value"));
  // takeWhile: 1
  // takeWhile: 2

  broadcastStream
      .skipWhile((value) => value < 3) // skip while true
      .listen((value) => print("skipWhile: $value"));
  // skipWhile: 3
  // skipWhile: 4
  // skipWhile: 5

  sc.add(1);
  sc.add(2);
  sc.add(3);
  sc.add(4);
  sc.add(5);
}
