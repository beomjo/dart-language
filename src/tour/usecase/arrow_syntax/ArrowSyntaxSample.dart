void arrowSyntax() {
  //=>다트 코드 에서 기호를 보았을 것 입니다. 이 화살표 구문은 표현식을 오른쪽으로 실행하고 값을 반환하는 함수를 정의하는 방법입니다.
  final aListOfStrings = ['one', 'two', 'three'];

  bool hasEmpty = aListOfStrings.any((s) {
    return s.isEmpty;
  });

  bool hasEmpty2 = aListOfStrings.any((s) => s.isEmpty);

  //위의 두 방법은 모두 같은 방법입니다.
}