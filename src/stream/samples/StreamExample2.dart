void main() {
  ex2();
}

Future<String> getData() async {
  await Future.delayed(Duration(seconds: 5)); // 5초간 대기
  print("Fetched Data");
  return "5초 기다렸다가 온 데이터입니다";
}

void ex2() {
  Stream.fromIterable([1, 2, 3, 4, 5])
      .listen((int x) => print('iterable : ${x}')); //일반적인 데이터를 다룰때

  Stream.periodic(Duration(seconds: 1), (x) => x)
      .take(5)
      .listen((x) => print('take : $x'));

  Stream.fromFuture(getData()).listen((x) => print('from future : $x'));
}

/// 반복적인 작업을 하고 싶다면 Stream.periodic()
/// 비동기 처리를 한다면 Stream.fromFuture().