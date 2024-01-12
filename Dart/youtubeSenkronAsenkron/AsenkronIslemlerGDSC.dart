import 'dart:math';

void main(List<String> args) {
//   print("Program başladı");
//   dosyaIcerigiGoster();
//   print("Program bitti");

  errorVeWhenCompleted();
}

// dosyaIcerigiGoster() async {
//   print("İçerik gösteriliyor");
//   String icerik = await dosyaIndir();
//   print("İçerik: $icerik");
// }

// Future<String> dosyaIndir() {
//   print("dosya indirme başladı");

//   Future<String> res = Future.delayed(Duration(seconds: 5), () {
//     return "indirilen içerik";
//   });
//   print("Dosya indirme işlemi bitti");
//   return res;
// }

void errorVeWhenCompleted() {
  var f1 = new Future.delayed(new Duration(seconds: 6), () {
    if (Random().nextBool()) {
      return 1;
    } else {
      throw "Url hata verdi";
    }
  }).timeout(new Duration(seconds: 8));

  var f2 = f1.then(print);
  var f3 = f2.catchError(print);
  var f4 = f3.whenComplete(() => print("islem hatali ya da hatasız bitti"));
  print(f4);
}
