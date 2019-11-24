Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  //생성기가 재귀 적 인 경우 다음을 사용하여 성능을 향상시킬 수 있습니다 yield*.
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

main() {
  print(naturalsTo(5));
  asynchronousNaturalsTo(10).forEach(print);
  print(naturalsDownFrom(5));
}
