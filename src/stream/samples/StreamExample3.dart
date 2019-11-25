main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.first.then((value) => print("stream.first:$value"));
  stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.last.then((value) =>print("stream.last:$value"));
  stream = Stream.fromIterable([1,2,3,4,5]);
  stream.isEmpty.then((value) => print("stream.isEmpty:$value"));
  stream = Stream.fromIterable([10,20,30,40,50,60]);
  stream.length.then((value) => print("stream.length:$value"));
}