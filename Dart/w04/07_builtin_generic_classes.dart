void main(List<String> args) {
  Kuyruk<double> reel = Kuyruk();
  Kuyruk<int> tamsayi = Kuyruk();
  Kuyruk<String> isimler = Kuyruk();

  islem<int>(1, 1);
}

void dugum<K, V>(K key) {
  //...
}
void islem<T>(T a, T b) {
  ///...
  ///
  ///
}

// built in - generic class

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

class Kuyruk<T> {}
