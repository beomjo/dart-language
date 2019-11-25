import 'dart:async';

main() {
  final StreamController ctrl = StreamController();
  final StreamSubscription subscription =
      ctrl.stream.listen((data) => print(data)); // 데이터가 더해질때마다 print 한다.

  ctrl.add(10);
  ctrl.add(200);
  ctrl.add(300);

  ctrl.close();
  //final StreamSubscription subscription2 = ctrl.stream.listen((data) => print(data));
  // 에러발생! listen을 여러번 하는 건 안됨. 스트림을 브로드캐스트로 바꿔줘야함.
//  ctrl.add(950); // 위에서 컨트롤러가 닫혔기에 출력되지 않음.
}
