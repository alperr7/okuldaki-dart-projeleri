void main(List<String> args) async {
  await birinci().then((gelecekDeger) => print(gelecekDeger));
  print("ikinci");
}

Future<int> birinci() async {
  int toplam = 0;
  for (var i = 0; i < 10000000; i++) {
    toplam += i;
  }
  return toplam;
}
