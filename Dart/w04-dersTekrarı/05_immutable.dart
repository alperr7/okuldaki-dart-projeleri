void main(List<String> args) {
  const Student s1 = Student(id: 1, fullName: "Aydın");

  Student s2 = Student(id: 1, fullName: "Mehmet");

  const Student s3 = Student(id: 1, fullName: "Aydın");

  print(s1 == s3);
}

//IMMUTABLE // değiştirilemez

/* class Student { //immutable
  final int
      id; //late koyarak sonradan değişkenin değerini atıyacağımızı söyleriz
  final String fullName;
  Student({required this.id, required this.fullName});

  void m() {
    //...
  }
} */

class Student {
  //immutable
  const Student({required this.id, required this.fullName});

  final int id;
  final String fullName;

  void m() {
    //...
  }
}
