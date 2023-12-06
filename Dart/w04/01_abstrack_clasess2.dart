void main(List<String> args) {}

// İnterface : Sınıf değildir , extend edilemez,concrete(somut) üye barındıramaz
// abstract : Sınıftır,sanal metot barındırabilir,instance(kalıtım) alınamaz sadece miras alınabilir
// dart dilince Interface yoktur , abstract sınıfları kullanırız
// abstract sınıflar dart da hem extend hemde implemente edilebilir.

abstract class Matematik {
  final PI = 3.14;

  double toplama(double a, double b); // virtual method
  double cikarma(double a, double b);
  double carpma(double a, double b);
  double bolme(double a, double b);
}

abstract class IleriMatematik {
  final e = 2.18;

  double integral(double f, double x);
  double turev(double f, double x);
  double sureklilik(double f, double x);
}

class DortIslem extends Matematik implements IleriMatematik {
  // iplements yapılmasının amacı İleriMatematik sınıfını da extends etmek istememiz
  // ikisini de implements edebilirdik --> class DortIslem implements Matematik, IleriMatematik
  //

  void m() {
    // ekstradan method ekleyebilirsin
  }

  @override
  double bolme(double a, double b) {
    return a / b;
  }

  @override
  double carpma(double a, double b) {
    return a * b;
  }

  @override
  double cikarma(double a, double b) {
    return a - b;
  }

  @override
  double toplama(double a, double b) {
    return a + b;
  }

  @override
  // TODO: implement e
  double get e => 2.18;

  @override
  double integral(double f, double x) {
    // TODO: implement integral
    throw UnimplementedError();
  }

  @override
  double sureklilik(double f, double x) {
    // TODO: implement sureklilik
    throw UnimplementedError();
  }

  @override
  double turev(double f, double x) {
    // TODO: implement turev
    throw UnimplementedError();
  }
}

class HesapMakinesi {
  //....
}

//class DortIslem implements HesapMakinesi, Matematik, IleriMatematik {
