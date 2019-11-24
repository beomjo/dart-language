import 'dart:html';

void exceptions() {
  try {
    throw Exception("Something bad happend");
//    throw 'Waaaaaah!';
  } on Exception catch (e) {
    // A specific exception
    print(e);
  } catch (e) {
    print(e);
  }
}

main(){
  exceptions();
}