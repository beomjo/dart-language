class Person {
  final _name;

  Person(this._name);

  String greet(String who) => "Hello, $who. I am $_name";
}

class Impostor implements Person{

  @override
  get _name => '';

  @override
  String greet(String who)=> "Hi, $who. Do you know who I am ?";
}

String greetBob(Person person)=>person.greet("Bob");

main(){
  print(greetBob(Person("kathy")));
  print(greetBob(Impostor()));
}