enum Cinsiyet {
  male,
  female,
  others,
}

void main() {
  print('Cinsiyet bilgileri(values):');
  for (Cinsiyet cinsiyet in Cinsiyet.values) {
    print(cinsiyet.toString().split('.').last);
  }
}
