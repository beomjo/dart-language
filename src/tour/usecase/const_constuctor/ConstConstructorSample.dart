class ImmutablePoint {
  const ImmutablePoint(this.x, this.y);

  final int x;
  final int y;

  static const ImmutablePoint origin =
  ImmutablePoint(0, 0);
}

void constConstructors() {
  //클래스가 절대 변경되지 않는 객체를 생성하는 경우 이러한 객체를 컴파일 타임 상수로 만들 수 있습니다.
  //이렇게하려면 const생성자를 정의하고 모든 인스턴스 변수가 최종적인지 확인하십시오.
  final immutablePoints = ImmutablePoint.origin;
  print("immutablePoints ${immutablePoints.x},${immutablePoints.y}");
}

main() {
  constConstructors();
}