enum Color { red, green, blue }


main() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  // -------------------------

  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  // -------------------------

  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }

  /**
   * 열거 형을 사용할 수 있으며 모든 열거 형 값을 처리하지 않으면 경고가 표시됩니다.
   * 열거 된 유형에는 다음과 같은 제한이 있습니다.
   *  - 열거 형을 하위 클래스로 만들거나 혼합하거나 구현할 수 없습니다.
   *  - 열거 형을 명시 적으로 인스턴스화 할 수 없습니다.
   * */


}
