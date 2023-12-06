// async , await=bekle
import "dart:io";

void main(List<String> args) async {
  // await kullanmak için bunu buraya yazmamız gerekir
  print("İşler başladı");
  Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(
          seconds: 1)); // Dartta asenkron kodlama yaparken Future kullanırız
      print("İş A $i");
    }
    print("İş A bitti");
  });
  Future.delayed(Duration(days: 0), () async {
    for (var i = 0; i < 15; i++) {
      await Future.delayed(Duration(seconds: 2));
      print("İş B $i");
    }
  });
  print("İş B bitti");
  print("****** Çok acil bir iş bitti ******");
  print("Tüm işler bitti");
}
