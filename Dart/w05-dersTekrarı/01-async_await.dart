//async , await

//Senkron
void main(List<String> args) async {
  print("İşler Başladı");

  Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 2)); //her işlem arasında 1 saniye bekletir
      print("İş A $i");
    }

    print("iş A bitti");
  });

  Future.delayed(Duration(days: 0), () async {
    for (var i = 0; i < 15; i++) {
      print("İş B $i");
      await Future.delayed(Duration(seconds: 2));
    }
    print("İş b bitti");
  });

  print("*************Çok acil bir iş bitti*************");
  print("İş b bitti");
}
  
  


//Asenkron programlama uzun zaman alan 
//programların sistemi bloke etmemesi için kullanıcağımız programlardır
