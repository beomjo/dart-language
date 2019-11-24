// Part 1
//You can call the provided async function getRole to return the user role
import 'dart:async';

Future<String> reportUserRole() async {
  return await getRole();
}

Future<String> getRole() => Future.value("User role: tester");

// Part 2
// Implement reportLogins here
// You can call the provided async function getLoginAmount to return the number of times that the user has logged in.
reportLogins() {}

main() async {
  var role = await reportUserRole();
  print(role);
}
