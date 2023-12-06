import '../../w03/ders.dart';

void main(List<String> args) {
  Ders ders1 = Ders();
  Ders ders2 = Ders();
  Ders ders3 = Ders();

  //Instance üyeler obje üzerinden erişilebilir
  ders1.setKod = 1;
  ders1.setAdi = "Mobil";

  ders2.setKod = 2;
  ders2.setAdi = "OOP";

  //Statik üyeler sınıf isminden erişilir
  // oluşturucağımız tüm Ders objeli değişkenler için statik üyeler ortaktır değişmez
  Ders.setKapasite = 24;
  Ders.setOgrenciSayisi = 22;

  print(ders1.getAdi);
  print(Ders.getKapasite);

  print(ders2.getAdi);
  print(Ders.getKapasite);

  print(Ders.uniKod);
}
