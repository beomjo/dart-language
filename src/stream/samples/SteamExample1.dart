void main() {
  ex1();
}

void ex1() {
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x)
      .take(10); // 1. 스트림 만들기 - 1초마다 데이터를 1개씩 만듬, 10개 까지만.
  stream.listen(print); // 2. 이벤트 처리
}

