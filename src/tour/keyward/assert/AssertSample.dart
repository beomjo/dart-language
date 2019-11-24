main() {
  int text;
  text ??= 0;

  final number = 99;

  final urlString = "http";

  // Make sure the variable has a non-null value.
  assert(text != null);

// Make sure the value is less than 100.
  assert(number < 100);

// Make sure this is an https URL.
  assert(urlString.startsWith('https'),
  'URL ($urlString) should start with "https".');
}
