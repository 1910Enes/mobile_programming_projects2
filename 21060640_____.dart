class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop(this.id, this.name, this.ram);

  void printDetaylar() {
    print('Laptop ID: $id');
    print('Laptop ismi: $name');
    print('RAM: $ram GB');
    print('\n');
  }
}

void main() {
  
  Laptop laptop1 = Laptop(1, 'Asus Vivobook', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Air', 8);
  Laptop laptop3 = Laptop(3, 'Monster AbraV15', 12);


  laptop1.printDetaylar();
  laptop2.printDetaylar();
  laptop3.printDetaylar();
}
