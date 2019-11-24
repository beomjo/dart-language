void someErrorOccur() {
  print("excute...");
//  throw OutOfMemoryError();
  throw Exception();
//  throw 'Exception';
}

main() {
  try {
    someErrorOccur();
  } on OutOfMemoryError {
    // A specific exception
    print("is OutOfMemory Exception");
  } on Exception catch (e) {
// Anything else that is an exception
    print('Unknown exception: $e');
    rethrow;
  } catch (e, s) {
// No specified type, handles all
    print('Something really unknown.. Details: $e');
    print('Stack trace : $s');
  } finally {
    print('end excute..');
  }
}
