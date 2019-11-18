String scream(int length) => "A${'a' * length}h!";

main() {
  //origin
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }

  //functional
  values.map(scream).forEach(print);

  //complex functional
  values.skip(1).take(3).map(scream).forEach(print);
}
