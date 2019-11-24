main(){
  //선언하며 데이터 추
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };



  //선언 후 데이터 추
  var gifts2 = Map();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases2 = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';



  //상수 맵 선언
  // constantMap[2] = 'Helium'; // Uncommenting this causes an error.
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

}