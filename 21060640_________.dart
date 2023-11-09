class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  

  int get id => _id;
  set id(int value) => _id = value;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get color => _color;
  set color(String value) => _color = value;

  double get price => _price;
  set price(double value) => _price = value;

  @override
  String toString() {
    return 'Kamera ID: $_id, Marka: $_brand, Renk: $_color, Fiyat: $_price';
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Siyah", 1910);
  Camera camera2 = Camera(2, "Nikon", "Gri", 7362);
  Camera camera3 = Camera(3, "Sony", "Beyaz", 29.05);

  
  print("Kamera 1 bilgileri: ${camera1.toString()}");
  print("Kamera 2 bilgileri: ${camera2.toString()}");
  print("Kamera 3 bilgileri: ${camera3.toString()}");
}
