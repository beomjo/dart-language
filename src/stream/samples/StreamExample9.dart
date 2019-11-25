import 'dart:async';

main() {
  var sc = StreamController.broadcast(); //
  var broadcastStream = sc.stream;
  broadcastStream.listen((v) => print('broadcast1 ${v}'));
  broadcastStream.listen((v) => print('broadcast2 ${v}'));
  sc.add(10);
  sc.add(20);
}
