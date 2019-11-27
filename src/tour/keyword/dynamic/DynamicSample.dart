void log(dynamic object){
  print(object.toString());
}

bool convertToBool(dynamic arg){
  if(arg is bool) return arg;
  if(arg is String )return arg =='true';
  throw ArgumentError('Cannnot convert $arg to a bool');
}

main(){
  log(true);
  log(0.123124);
  log(1);
  log("sss");
}