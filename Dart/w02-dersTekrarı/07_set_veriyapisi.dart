void main(List<String> args) {
  //koleksiyon

  Set<int> kume1 = {1, 1, 2};
  //kümenin listten farklı elemanlarının tekrarlanmamasıdır
  // bir elemanı en fazla 1 kere yazılır
  //Sıralı listeler değildirler bu yüzden for döngüsü ile çağırılmaz
  // for in döngüsü ile yapılabilir

  /*for (var i = 0; i < kume1.length; i++) {
    print(kume1[i]);
  }
  */
  for (var element in kume1) {
    print(element);
  }

  // eleman ekleme
  kume1.add(6);
  kume1.add(7);

  //eleman var mı
  print(kume1.contains(2));
  print("----- foreach yapısı ------");
  kume1.forEach((element) {
    print(element);
  });

  print(kume1);

  List<int> list1 = [4, 5, 6, 7, 9];
  kume1.addAll(list1);
  print(kume1);
}
