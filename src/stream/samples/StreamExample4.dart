import 'dart:async';

main() {
  map();
  transformer();
}

void transformer() {
  //Stream sink는 스트림 이벤트를 받아들이는 것이다.
  var transformer = StreamTransformer.fromHandlers(handleData: (value, sink) {
    sink.add("First : $value");
    sink.add("Second : $value");
  });
  
  var stream = Stream.fromIterable(["Good", 1, 2, 3, 4, 5]);
  stream.transform(transformer).listen((value) => print("listen : $value"));
}

void map() {
  var streamMap = Stream.periodic(Duration(milliseconds: 200), (x) => x)
      .take(3)
      .map((x) => x + 10);

  streamMap.listen(print);
}
