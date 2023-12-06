//class declerration/definiton = sınıf tanımlama
//sınıf != obje

class Ogrenci {
//Üyeler/Sınıfın içindeki herşey
//01.Statik Üyeler
//Sonradan anlatılacak

//02.Instance/kopya=örnek üyeleri
  //01.Field , veri alanları
  //public access modifiers / erişim denetleyicileri/encapsulation
  //int? no;
  //String? ad;
  //String? soyad;
  //bool? cinsiyet;

//private access modifiers / erişim denetleyicileri
  int? _no;
  /*  Eğer soru işareti yerine late int _no şeklinde yazsaydık anlamı 
  _no değişkeninin null olucağı verde ben değer atayacağım demek */
  //Soru işareti koymamızın sebebi ise null olabilir diye programa söylemek
  String? _ad;
  String? _soyad;
  bool? _cinsiyet;

  //02.Properties , Özellikler //metot ile değişken arası yapılardır
  set setNo(int no) {
    //...
    this._no = no;
  }

  int? get getNo {
    //...
    return this._no;
  }

  //03.Metotlar/Fonksiyonlar.

  String? adinNe() {
    return "Merhaba benim adım $_ad";
  }

  void sarkiSoyle() {
    print("Şuan senin için şarkı söylüyorum...");
  }

  double sinavdanKacAldin(String dersKodu) {
    if (dersKodu == "MP1") {
      return 98.98;
    } else {
      return 85.00;
    }
  }
}

        //04.Yapıcı/kurucu metot/Constructor
        // Diğer derste görücez

          //05.Fabrika kurucular/Factory Contructor/method

