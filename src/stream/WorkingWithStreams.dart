Future<int> lastPositive(Stream<int> stream) => stream.lastWhere((x) => x >= 0);

Stream<int> generate(int x) async* {
  for (int i = 1; i <= x; i++) {
    yield i;
  }
}

main() {
  var lastPositiveNumber = lastPositive(generate(10));
  print(lastPositiveNumber);
}
