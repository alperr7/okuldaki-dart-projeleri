import '../../../YTU/Dart/w03/student.dart';

void main(List<String> args) {
  //int? a; // ? işaretini koymamızın amacı program normalde hata verir.
  //Hata vermemesi için biz ? işareti koyarak bu değişkenin null olmasına izin veriyoruz

  Student o1 = Student(5);
  o1.adi = "";

  print(o1.id);
}

class Student {
  //int ? id;
  //String? adi;

  late int id; // riskli
  late String
      adi; // late koyarak bu değişkenlere daha sonra muhakkak bir değer vericeğini garantilemiş oluyoruz

  final int depertment; // risksiz
  Student(this.depertment) {}
}
