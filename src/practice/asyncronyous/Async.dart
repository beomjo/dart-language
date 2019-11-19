Future<void> getUserOrder() {
  // Imagine that this function is fetching user info from another service or database
  return Future.delayed(Duration(seconds: 3), () => print('Large Latte'));
}

main() {
  getUserOrder();
  print('Fetching user order...');
}