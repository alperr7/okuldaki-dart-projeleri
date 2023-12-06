void main(List<String> args) {
  int a =
      getNum()!; // "!" işareti null assertion kesinlikle null gelmicek demek
  print(a);

  var t1 = Test1();
  int s1 = t1.list!.first!;

  int a1 = t1.a!;
  print(a1);
}

int? getNum() {
  return 5;
}

class Test1 {
  int? a;
  List<int?>? list = [10, 2, 6, null];
}
