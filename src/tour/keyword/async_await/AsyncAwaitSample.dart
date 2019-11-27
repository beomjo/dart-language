//String lookUpVersion() => "1.0.0";

Future<String> lookUpVersion() async => "1.0.0";

Future checkVersion() async {
  var version = await lookUpVersion();
}

Future checkVersionErrorHandle() async {
  try {
    var version = await lookUpVersion();
  } catch (e) {
    // React to inability to look up the version
  }
}

Future checkVersionManyOfAsyncFunction() async {
  var version = await lookUpVersion();
  await lookUpVersion();
  await lookUpVersion();
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future handle(Stream<String> requestServer) async {
  await for (var request in requestServer) {
    handleRequest(request);
  }
}

void handleRequest(String request) {
  print(request);
}

main() {
  checkVersion();
  checkVersionErrorHandle();
  checkVersionManyOfAsyncFunction();

  final elements = [1, 2, 3];
  sumStream(Stream.fromIterable(elements));

  handle(Stream.fromIterable(["r1", "r2", "r3"]));
}
