main() {
  //Set을 아래와 같이 정의 할 수 있습니다.
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    'fluorine'
  };
  assert(halogens.length == 5);

  // String 유형의 Set 정의
 // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  var names = <String>{};


  //Set에 데이터 추
  names.add("ss");
  names.addAll(halogens);


  //상수  Set
  // constantSet.add('helium'); // Uncommenting this causes an error.
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
}
