main() {
  if (isRaining())
    print("bringRainCoat");
  else if (isSnowing())
    print("wearJacket");
  else
    print("putToDown");
}

bool isRaining() => true;

bool isSnowing() => true;