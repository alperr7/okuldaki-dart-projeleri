void main(List<String> args) {
  User user = User();
  user.kullaniciAdi = "ascer";
  user.sifre = "123";
  user.girisYap();
  print("-----------------");

  AnonimUser anonimUser = AnonimUser();
  anonimUser.kullaniciAdi = "saflömasf";
  anonimUser.girisYap();
  print("-----------------");

  AdminUser adminUser = AdminUser();
  adminUser.kullaniciAdi = "afkmas";
  adminUser.sifre = "213";
  adminUser.girisYap();
  print("-----------------");

  GucluAdminUser gucluAdminUser = GucluAdminUser();
  gucluAdminUser.kullaniciAdi = "safşl";
  gucluAdminUser.sifre = "12";
  gucluAdminUser.girisYap();

  print("--------------");

  //polymorphism
  List<User> kullanicilar = [];
  kullanicilar.add(User());
  kullanicilar.add(AnonimUser());
  kullanicilar.add(AdminUser());
  kullanicilar.add(GucluAdminUser());

  for (var item in kullanicilar) {
    item.girisYap();
  }

  KullaniciKontrol(AdminUser()); //bu method polymorph özellikleri destekler
}

void KullaniciKontrol(User user) {
  //polymorphism kuullanıldığı bir method
  user.girisYap();
}

class User {
  User() {
    print("User() nesnesi oluştu....");
  }

  String? kullaniciAdi;
  String? sifre;

  void girisYap() {
    print("Kullanıcı Doğrulandı");
    print("User Yetkiler alındı");
    print("Kullanıcı Giriş Yaptı");
  }

  void cikisYap() {
    print("User oturum temizlendi");
    print("User çıkış yaptı");
  }
}

class AnonimUser extends User {
  AnonimUser() {
    print("AnonimUser() oluştu....");
  }

  @override // override koymamaızın sebebi aynı metotları kullanabilir
  //fakat extends ettiğimiz Sınıftan farklı metotlar da olabilir demek
  void girisYap() {
    print("AnonimUser Doğrulandı");
    print("AnonimUser Yetkiler alındı");
    print("AnonimUser Giriş Yaptı");
  }

  @override
  void cikisYap() {
    print("AnonimUser oturum temizlendi");
    print("AnonimUser çıkış yaptı");
  }
}

class AdminUser extends User {
  AdminUser() {
    print("AdminUser() nesnesi oluştu....");
  }

  @override // override koymamaızın sebebi aynı metotları kullanabilir
  //fakat extends ettiğimiz Sınıftan farklı metotlar da olabilir demek
  void girisYap() {
    print("AdminUser Doğrulandı");
    print("AdminUser Yetkiler alındı");
    print("AdminUser Giriş Yaptı");
  }

  @override
  void cikisYap() {
    print("AdminUser oturum temizlendi");
    print("AdminUser çıkış yaptı");
  }
  //void _A(){//private değişkenler inheritance de çalışmaz
}

class GucluAdminUser extends AdminUser {
  GucluAdminUser() {
    print("GucluAdminUser() nesnesi oluştu....");
  }

  @override // override koymamaızın sebebi aynı metotları kullanabilir
  //fakat extends ettiğimiz Sınıftan farklı metotlar da olabilir demek
  void girisYap() {
    print("GucluAdminUser Doğrulandı");
    print("GucluAdminUser Yetkiler alındı");
    print("GucluAdminUser Giriş Yaptı");
  }

  @override
  void cikisYap() {
    print("GucluAdminUser oturum temizlendi");
    print("GucluAdminUser çıkış yaptı");
  }
}
