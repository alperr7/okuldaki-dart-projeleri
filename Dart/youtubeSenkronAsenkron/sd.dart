void main() async {
  print("Program başladı");

  // Bir asenkron işlemi başlat
  await asenkronIslem();

  print("Program bitti");
}

Future<void> asenkronIslem() async {
  print("Asekron işlem başladı");
  // Burada bir asenkron işlemi simgeliyoruz
  await Future.delayed(Duration(seconds: 2));
  print("Asekron işlem bitti");
}
