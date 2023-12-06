void main(List<String> args) {
  var a1 = 1;
  int a2 = 1;
  final int a3; //finalda 1 kere değiştirme hakkımız var
  a3 = 5;
  //a3=4; //err
  const int a4 = 1; //direkt değer almak zorunda ve hiç değşimezler
  //a4=4; //err

  final Student s1 = Student(id: 1, fullName: "Alper");
  s1.id = 2;
  //burada final adresi fixler,yani aynı adrese başka obje atayamayız
  //s1 = Student(id: 2, fullName: "Ayşe");

  Student s3 = Student(id: 1, fullName: "Aydın");
  Student s4 = Student(id: 1, fullName: "Aydın");
  print(s3 == s4); //adresler farkı olduğu için false olur
}

class Student {
  int id; //late koyarak sonradan değişkenin değerini atıyacağımızı söyleriz
  String fullName;
  Student({required this.id, required this.fullName});

  void m() {
    //...
  }
}
