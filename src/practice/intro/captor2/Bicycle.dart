class Bicycle {
  int cadence;
  int _speed = 0; //underbar 붙였을떄 , private

  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => "Bicycle : $_speed mph";
}
