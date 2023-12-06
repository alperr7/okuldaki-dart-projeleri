import 'dart:io';

void main(List<String> args) {
  print("1.Sayı:");
  var i1 = stdin.readLineSync();
  var s1 = int.parse(
      i1!); // ünlem koymamızın amacı ben bundan eminim sen çevir demek

  print("2.sayı : ");
  var i2 = stdin.readLineSync();
  var s2 = int.parse(i2!);

  print("Toplam : ${s1 + s2}");
}
