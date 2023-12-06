//yapıcı metod bir sınıf nesneleştiren yapıdır
//Yapıcı metodun görevi sınıftan nesne üretmektir
import 'araba.dart';

void main(List<String> args) {
  Araba araba1 = Araba();
  Araba araba2 =
      Araba.markaIleObjeOlustur(marka: "Mercedes"); //isimli obje oluşturucu
  Araba araba3 = Araba.markaModelIleObjeOlustur(
      "Mercedes", "X Class"); //isimli obje oluşturucu

  Araba araba4 = Araba.markaModelYilIleObjeOlustur(
    marka: "Mercedes",
    model: "X Class",
    yil: 2012,
  ); // isimli obje oluşturucu
}
