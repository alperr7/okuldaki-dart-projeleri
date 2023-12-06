void main(List<String> args) async {
  print("Başlangıç");
/*   await isA(); */

  /* Future.delayed(Duration.zero, () async {  //Asenkron içinde senkron çalışır await sayesinde
    
    print(sonuc);
  }); */

  isB().then((sonuc) {
    print(sonuc);
  }).onError((error, StackTrace) {
    //.....
  }).whenComplete(() => ());

  print("Acil İş");
  print("Bitiş");
}

Future isA() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş A $i");
    }
    print("İş A bitti");
  });
}

//await metoduyla asenkron bir metodu senkron olarak çağırabiliriz

Future<String> isB() async {
  await Future.delayed(Duration(seconds: 1), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş B $i");
    }
  });
  return "İş B Bitti";
}
