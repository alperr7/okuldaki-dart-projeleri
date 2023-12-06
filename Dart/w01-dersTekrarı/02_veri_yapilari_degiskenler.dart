void main(List<String> args) {
//Dart Veri yapıları
//strongly typed dildir.
//dynamic tipleri de destekler.

//dynamic veri yapısına sahip diller
//js,pyhton ...

// eğer bir veriyi tanımlarken başına tip yazıyorsak
//  int a = 5; gibi olursa bu strongly type denir
// a="Ahmet"; dersek hata verir çünkü strongly type diller buna izin vermez
  dynamic c = 1;
  c = "Ahmet"; // bu şekilde dynamic diye yazarsak uygulama hata vermez
  //ve istediğimiz gibi değiştirebiliriz

//Dynamic tipleri destekleyen diller tehlikelidir.Çünkü derleme zamanında
//hiçbir hata almazken Çalışma zamanında hatanın ne zaman olacağını bilemezsiniz.

//veriyi tanımlarken başına tip yazmaya gerek yoksa
// b=15;  gibi olursa dynamic veri yapısına sahip dildir
// b="Ahmet";  b'yi integer bir tipten daha sonra string bir tipe çevirebiliriz çünkü dynmaic bir veri yapısına sahiptir

//Dart Veri yapısı

//1-Numbers Types
//  int
//  double

//2-String Types

//3-Boolean types
//  true
//  false

//4-diğer objeler

  int yas = 20;
  double maas = 1500.56;

  String ad = "Alper";
  bool dogrudur = !true;

  DateTime dogumGunu = DateTime(2003, 05, 09);

  Object yas1 = 15;

  print(dogrudur);

  Object file = "asdasad";

// String Interpolasyon
  print("Ad:" +
      ad +
      " Yaş:" +
      yas.toString() +
      " DTarih : " +
      dogumGunu.toString());

  print("Ad: $ad Yaş $yas ");
  print("2-Ad: $ad, Yaş: $yas,DTarih: ${dogumGunu}");

  //var ile değişken tanımlama dynamic tiplerle karıştırılmaması gerekir
  // sonradan strongly type dillere entegre edilmiş bir yapıdır
  var a1 = 15;
  //a1 = "Alper"; yapamayız uygulama hata verir

  var isim1 = "Ahmet";
}
