void createOrderMessage() async {
  try {
    var order = await getUserOrder();
    print('Awaiting user order...');
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> getUserOrder() {
  // Imagine that this function is more complex.
  var str = Future.delayed(
      Duration(seconds: 4), () => throw 'Cannot locate user order');
  return str;
}

main() async{
  await createOrderMessage();
}
