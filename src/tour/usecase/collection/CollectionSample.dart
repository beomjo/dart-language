void collectionLiterals() {
  final aListOfStrings = ['one', 'two', 'three'];
  final aSetOfStrings = {'one', 'two', 'three'};
  final aMapOfStringsToInts = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  /*
   * 다트의 유형 유추는 위와같 변수에 유형을 할당 할 수 있습니다. 이 경우, 추론 유형은 List<String>, Set<String>하고 Map<String, int>.
   * 또는 아래와 같이 직접 유형을 지정할 수 있습니다.
   * */

  final aListOfInts = <int>[1, 2, 3, 4];
  final aSetOfInts = <int>{1, 1, 1, 1};
  final aMapOfIntToDouble = <int, double>{};
}

