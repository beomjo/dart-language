import 'dart:async';

main() {
  final sc = StreamController.broadcast();
  final broadcastStream = sc.stream;
  broadcastStream
      .any((value) => value < 5)
      .then((result) => print("Any less than 5?: $result")); // true

  broadcastStream
      .every((value) => value < 5)
      .then((result) => print("All less than 5?: $result")); // false

  broadcastStream
      .contains(4)
      .then((result) => print("Contains 4?: $result")); // true

  sc.addStream(asynchronousNaturalsTo(5));
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

