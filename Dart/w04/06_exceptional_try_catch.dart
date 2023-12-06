void main(List<String> args) {
  int a = 1;
  int b = 0;

  if (b == 0) {
    //hrow Exception("Sıfıra bölme hatası");
    throw BenimHatam("Sıfıra Bölme Hatası");
  }

  try {
    print(a / b);
  } on IntegerDivisionByZeroException {
    //...
  } on FormatException {
    //.....
  } catch (e) {
    print(e);
  } catch (e) {
    //...
  }
}

class BenimHatam implements Exception {
  // kendi hata mesajını oluşturma
  String mesaj;
  BenimHatam(this.mesaj);

  @override
  String toString() {
    return "Exception: 405,$mesaj";
  }
}
