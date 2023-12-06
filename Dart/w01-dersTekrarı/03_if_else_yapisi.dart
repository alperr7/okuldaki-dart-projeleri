void main(List<String> args) {
  int a = 100;
  int b = 1000;
  if (a > b) {
    print("$a > $b");
  } else if (a < b) {
    print("$a < $b");
  } else {
    print("$a=$b");
  }
  int gun = 1;
  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    default:
      print("Pazar");
  }

//ternary if/kısa if
  String name = (gun == 1) ? "Okula git" : "Evde kal";
  print(name);
}
