main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);

  var list3;
  var list4 = [0, ...?list3];
  assert(list4.length == 1);

  //collection if
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  assert(nav.length == 4);

  //collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  assert(listOfStrings.length == 4);
}
