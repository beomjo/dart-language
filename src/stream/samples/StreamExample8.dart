main() {
  var stream = Stream.periodic(Duration(milliseconds: 200), (x) => x).take(10);
  var subscription = stream.listen((x) => print, onDone: () {
    print("on done");
  }, onError: (e, s) {
    print("on error");
  });
}
