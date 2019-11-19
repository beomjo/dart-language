class Automobile{
  String make;
  String model;
  int mpg;

  // The main constructor for this class.
  Automobile(this.make,this.model,this.mpg);

  // Delegates to the main constructor.
  Automobile.hybrid(String make,String model):this(make,model,60);

  // Delegates to a named constructor
  Automobile.fancyHybrid() : this.hybrid('Futurecar', 'Mark 2');
}