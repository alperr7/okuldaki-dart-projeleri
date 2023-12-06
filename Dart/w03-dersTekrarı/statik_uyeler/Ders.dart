import '../../w03/ogrenci.dart';

class Ders {
  static int? uniKod = 1; //tüm dersler için uniKod aynı olabilir

  int? _kod;
  String? _adi;

  // statik üyeler/dikkatli olunmalı herşey  statik tanımlanamaz
  static int? _kapasite;
  static int? _ogrenciSayisi;

  List<Ogrenci> ogenciler = [];

  set setKod(int? kod) {
    this._kod = kod;
  }

  get getKod {
    return this._kod;
  }

  set setAdi(String adi) {
    this._adi = _adi;
  }

  get getAdi {
    return this._adi;
  }

  // static properitieler
  // static üyeler this'ile çağrılmaz çünkü artık nesneye ait değildir.
  //Örneğin ders sınıfına aittir fakat ders nesnesine ait değildir.Herkes tarafından çağırılabilir
  static set setKapasite(int kapasite) {
    _kapasite = kapasite;
  }

  get getKapasite {
    return _kapasite;
  }

  set setOgrenciSayisi(int ogrenciSayisi) {
    _ogrenciSayisi = ogrenciSayisi;
  }

  static get getOgrenciSayisi {
    return _ogrenciSayisi;
  }
  //static metotlar
  //static constructor

  static int? hangiUniversite() {
    return uniKod;
  }
}
