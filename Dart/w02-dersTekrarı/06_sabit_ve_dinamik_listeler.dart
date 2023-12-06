void main(List<String> args) {
  //01-sabit uzunluklu listeler
  List<int> list1 = List.filled(5, 0,
      growable:
          false); // growable büyüyebilir mi liste daha fazla eklenebilir mi diye izin istiyor
  //list1.add(4);

  //02-dinamik uzunluklu listeler
  List<int> list2 = List.filled(5, 0, growable: true);
  list2.add(5);

  List<String> isimler = [];
  isimler.add("Aydın");
  isimler.add("Alper");

  var sonuc = isimler.where((element) => element.startsWith("A"));
  print("A ile başlayan sonuçlar $sonuc");

  for (var i = 0; i < isimler.length; i++) {
    print(isimler[i]);
  }
  print("---- for in döngüsü ile ----");
  for (var element in isimler) {
    print(element);
  }

  isimler.add("Mustafa");
  isimler[1] = "Ahmet";
  print(isimler.length);
  print(isimler.isEmpty);
  print(isimler.reversed);
  var birlestir = isimler.join("@");
  print(birlestir);
  print(isimler.first);
  print(isimler.join("@"));

  var dizi = birlestir.split("@");
  print(dizi);

  List<dynamic> liste2 = [1, true, "Aydın", DateTime(2025)];
}
