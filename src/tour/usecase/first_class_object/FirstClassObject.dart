void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

main() {
  //매개변수로 함수 전달
  list.forEach(printElement);


  //변수에 함수 할당
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');
}
