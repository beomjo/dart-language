class NonNegativePoint {
  int x;
  int y;

  NonNegativePoint(this.x, this.y)
      : assert(x >= 0),
        assert(y >= 0) {
    print('I just made a NonNegativePoint: ($x, $y)');
  }
}

void initializerLists(){
  //생성자 assertion
  final nonNegativePoints = NonNegativePoint(1,1);
  print(nonNegativePoints.x);
}

main(){
  initializerLists();
}