void main(List<String> args) {
  Student o1 = Student(2);
  o1.name = "";
}

class Student {
/*   int? id; //risksiz 
  String? name; //risksiz */

  late int id; //risklidir
  late String
      name; // late demek sonradan tanımlayacağının garantisini veriyoruz
  // null olmucak demek birnevi

  final int depertmand;
  Student(this.depertmand) {}
}
