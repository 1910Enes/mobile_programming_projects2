abstract class Bottle {
  void open();
}


class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke şişesi açildi.");
  }
}

void main() {
  Bottle createCokeBottle() => CokeBottle();

  
  Bottle cokeBottle = createCokeBottle();

  
  cokeBottle.open();
}
