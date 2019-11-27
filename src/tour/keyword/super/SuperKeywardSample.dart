class Television {
  void turnOn() {
    print('is super turnOn Method');
  }
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    print('is sub turnOn Method');
  }
}

main() {
  final smartTelevision = SmartTelevision();
  smartTelevision.turnOn();
}
