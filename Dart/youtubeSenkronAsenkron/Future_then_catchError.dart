void main(List<String> args) {
  print("birinci kodum");
  ikinciKod()
      .then((gelecekDeger) => print(gelecekDeger))
      .catchError((e) => print(e))
      .whenComplete(() => print("işlem başarılı"));
  print("üçüncü kodum");
}

Future<String> ikinciKod() {
  return Future.delayed(
      Duration(seconds: 2), () => "ben ikinci kodum işim uzun");
}
