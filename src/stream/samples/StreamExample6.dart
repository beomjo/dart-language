import 'dart:async';

main() {
  var streamIter = Stream.fromIterable([10, 20, 30, 40, 50]);
  StreamSubscription subscription =
      streamIter.listen((int number) => print(number));

  subscription.cancel(); // 연결 해제
}
