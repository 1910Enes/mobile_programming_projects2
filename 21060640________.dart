class Hayvan {
  int id;
  String ad;
  String renk;

  Hayvan(this.id, this.ad, this.renk);

  @override
  String toString() {
    return 'Hayvan ID: $id, Ad: $ad, Renk: $renk';
  }
}

class Kedi extends Hayvan {
  String ses;

  Kedi(int id, String ad, String renk, this.ses) : super(id, ad, renk);

  @override
  String toString() {
    return 'Kedi Bilgileri - ${super.toString()}, Ses: $ses';
  }
}

void main() {
  Kedi Kedim = Kedi(1, "Eyşan", "Sari", "Miyav");

  print(Kedim); 
}
