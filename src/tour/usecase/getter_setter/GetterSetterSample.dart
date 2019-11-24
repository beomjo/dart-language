class MyClass {
  int _aProperty = 0;

  int get aProperty => _aProperty;

  set aProperty(int value) {
    if (value >= 0) {
      _aProperty = value;
    }
  }

  List<int> _values = [];

  void addValue(int value) {
    _values.add(value);
  }

  // A computed property.
  int get count {
    return _values.length;
  }

  int get countSum => _values.fold(0, (acc, v) => acc + v);
}

void gettersAndSetter() {
  final myClass = new MyClass();
  myClass.aProperty = -1;
  print(myClass.aProperty);
  myClass.aProperty = 10;
  print(myClass.aProperty);

  myClass.addValue(1);
  myClass.addValue(2);
  myClass.addValue(3);
  print(myClass.count);
  print(myClass.countSum);
}

main(){
  gettersAndSetter();
}