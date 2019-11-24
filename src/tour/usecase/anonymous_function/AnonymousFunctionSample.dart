main() {
  /**
   *
   * ([[Type] param1[, …]]) {
   *  codeBlock;
   *  };
   *
   * */

  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

 //화살표 표기법을 이용하여 단축 가능
 list.forEach((item) => print('${list.indexOf(item)}: $item'));
}
