import 'dart:async';

main() {
  var stream = Stream.periodic(Duration(milliseconds: 200), (x) => x);
  StreamSubscription subscription = stream.listen(null);
  subscription.onData((value) { // onData : 데이터를 하나씩 처리할때
    print("listen stream : $value");
    if (value == 10) {
      subscription.cancel();
    }
  });

  subscription.onError((err) => print("error : $err")); // 에러가 났을때
  subscription.onDone(() => print("on done")
  ); // 더 받을 데이터가 없을때
}