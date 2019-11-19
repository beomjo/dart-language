// Asynchronous
Future<String> createOrderMessage() async {
  var order = await getUserOrder();
  return 'Your order is: $order';
}

Future<String> getUserOrder() {
// Imagine that this function is
// more complex and slow.
  return
    Future.delayed(
        Duration(seconds: 4), () => 'Large Latte');
}

// Asynchronous
main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}

// 'Fetching user order...'
// 'Your order is: Large Latte'

/**
 * async : async함수 본문 앞에 키워드를 사용하여 비동기로 표시 할 수 있습니다.
 * async function : async함수는 async 키워드로 표시된 함수입니다 .
 * await : await키워드를 사용하여 비동기식의 완성 된 결과를 얻을 수 있습니다 . await키워드는 단지 async 내에서 작동하는 기능입니다.
 * */