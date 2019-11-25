Stream<int> createStream(List<int> numbers) async* {
  // async*는 yield를 쓴다는 의미다.
  for (var number in numbers) {
    yield number; // yield는 제너레이터를 만든단 뜻이다.
  }
}

main() {
  var numStream = createStream([1, 3, 5, 7, 9]); // 스트림을 만든다.
  numStream.listen((int number) => print(number)); // 스트림으로부터 데이터를 받아서 출력을 한다.
}
