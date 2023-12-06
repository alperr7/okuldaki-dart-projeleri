void main(List<String> args) {}

mixin Ucabilen {
  int a = 3;
  void uc() {
    print("Uçabilirim");
  }
}

mixin Yuzebilen {
  int b = 3;
  void yuz() {
    print("Yüzebilirim");
  }
}

mixin Kosabilen {
  int c = 3;
  void kos() {
    print("Koşabilirim");
  }
}

class Kus with Ucabilen, Kosabilen {
  void m() {
    print(a);
    uc();
    kos();
  }
}
