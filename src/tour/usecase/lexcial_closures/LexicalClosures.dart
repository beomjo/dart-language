/// Returns a function that adds [addBy] to the
/// function's argument.
///
/// 폐쇄 기능은 원래의 범위 밖에서 사용되는 경우에도, 그 어휘 범위의 변수에 액세스하는 기능 개체이다.
/// 함수는 주변 범위에 정의 된 변수를 닫을 수 있습니다. 다음 예제에서는 makeAdder()변수를 캡처합니다 addBy. 반환 된 함수가 어디를 가든 기억 addBy합니다.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
