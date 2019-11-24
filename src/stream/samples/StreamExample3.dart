main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.first.then((value) =>
      print("stream.first: $value")); // 가장 앞의 데이터만 가져온다 - 결과 : 1
  ​
  stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.last.then((value) =>
  print("stream.last: $value")); // 가장 마지막의 데이터만 가져옴 - 결과값 : 5
  ​
  stream = Stream.fromIterable([1,2,3,4,5]);
  stream.isEmpty.then((value) => print("stream.isEmpty: $value")); // 비어 있는지 확인 - false
  ​
  stream = Stream.fromIterable([10,20,30,40,50,60]);
  stream.length.then((value) => print("stream.length: $value")); // 전체 길이 - 6
}