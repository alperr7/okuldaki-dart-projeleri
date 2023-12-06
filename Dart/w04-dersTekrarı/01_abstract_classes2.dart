void main(List<String> args) {}

//interface:Sınıf değildir,extend edilemez concrete(somut üye) barındıramaz
//abstract:sınıftır,sanal metot barındırabilir instance(kalıtım) alınamaz.Sadece miras alınabilir

//dart dilinde Interface yoktur , abstract sınıfları kullanırız
//abstract sınıflar dart da hem extend hem de implemente edilebilir

abstract class Matematik {
  final PI = 3.14;

  double toplama(double a, double b); //abstract methodlar
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

class HesapMakinesi {
  //....
}

class DortIslem extends HesapMakinesi implements Matematik, IleriMatematik {
  void m() {}

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

  @override
  // TODO: implement PI
  double get PI => throw UnimplementedError();
}
