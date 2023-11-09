class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void printDetaylar() {
    print('Ev ID: $id');
    print('Ev Adı: $name');
    print('Fiyat: ${price.toStringAsFixed(2)} TL');
    print('\n');
  }
}

void main() {
  
  House house1 = House(1, 'Mavi Ev', 250000.0);
  House house2 = House(2, 'Yeşil Ev', 300000.0);
  House house3 = House(3, 'Kirmizi Ev', 200000.0);

  
  List<House> houseList = [house1, house2, house3];

 
  for (var house in houseList) {
    house.printDetaylar();
  }
}
