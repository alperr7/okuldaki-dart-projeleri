void main(List<String> args) {
  Kuyruk<double> reel = Kuyruk();
  Kuyruk<int> tamsayi = Kuyruk();
  islem(1, "1");
}

//built in - generic class generic demek <> işaret ile ona özel demek

T islem<T, K>(T a, K b) {
  return a;
}

List<int> list = [];
List<String> list2 = [];
Map<int, String> coll = {};

//user defined

class SayiKuyrugu {
  List<int> list = [];
  void ekle(int a) {
    list.add(a);
  }

  int cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
}

class Kuyruk<T> {
  List<T> list = []; //generic sınıfların içine generic methodlar yazdırabiliri<
  void ekle(T a) {
    list.add(a);
  }

  T cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
}
