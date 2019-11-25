import 'dart:async';

main() {
  final sc = StreamController.broadcast();
  final broadcastStream = sc.stream;

  broadcastStream
      .singleWhere((value) => value < 1) // there is only one value less than 2
      .then((value) => print("single value: $value"));
  // outputs: single value: 1

  broadcastStream
      .single // will fail - there is more than one value in the stream
      .then((value) => print("single value: $value"))
      .catchError((err) => print("Expected Error: $err"));

  sc.addStream(asynchronousNaturalsTo(6));
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 1;
  while (k < n) yield k++;
}
