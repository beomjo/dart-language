class Points {
  num x, y;

  Points(this.x, this.y);

  Points.origin() {
    x = 0;
    y = 0;
  }
}

void namedConstructors() {
  final myPoints = Points.origin();
  print("${myPoints.x},${myPoints.y}");
}

main(){
  namedConstructors();
}