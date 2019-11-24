import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> read(List<String> args) async {
  var file = File(args[0]);
  var lines = utf8.decoder
      .bind(file.openRead())
      .transform(LineSplitter());
  await for (var line in lines) {
    if (!line.startsWith('#')) print(line);
  }
}

main(){
  read([".gitignore"]);
}
