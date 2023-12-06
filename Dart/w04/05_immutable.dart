void main(List<String> args) {
  const Student s1 = Student(id: 1, fullName: "Aydın");

  Student s2 = Student(id: 1, fullName: "Aydın");

  const Student s3 = Student(id: 1, fullName: "Aydın");

  print(s1 == s2);
  print(s1 ==
      s3); // sabitler değerleri aynıysa aynı adresi paylaşırlar o yüzden false yerine true çıktısı verdi
}

// Immuttable // Değiştirilemez
class Student {
  // immutable sınıf
  const Student({required this.id, required this.fullName});
  final int id; // late int id;
  final String fullName;

  void m() {}
}
