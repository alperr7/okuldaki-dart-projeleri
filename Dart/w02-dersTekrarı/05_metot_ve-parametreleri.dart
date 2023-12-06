void main(List<String> args) {
  print("Opsiyonel Parametreler");
  print(Sum1(5, 10));
  print(Sum2());
  print(Sum2(1));
  print(Sum2(1, 2));

  print("HİBRİT PARAMETRELER");
  print(Sum3(1));
  print(Sum3(1, 2));
  print(Sum3(1, 2, 3));

  print("İsimli Parametreli Metotlar");
  print(Sum4());
  print(Sum4(a: 1));
  print(Sum4(b: 1));
  print(Sum4(
      a: 1,
      b: 2)); // yerleri fark etmez isimli olduğu için nereye gidiceğini bilirler
  print("hibrit isimli parametreli + opsiyonel metotlar");
  print(Sum5(1));
  print(Sum5(1, a: 2));
  print(Sum5(1, a: 2, b: 2));
  print(Sum5(1, b: 3, a: 2));

  print("hibrit + isimli parametreli + zorunlu , metotlar");
  print(Sum6(1, a: 2, b: 2));
  print(Sum6(1, b: 3, a: 2));

  print("hibrit , isimli parametreli + zorunlu/opsiyonel , metotlar");
  print(Sum7(1, a: 2));
  print(Sum7(1, a: 2, b: 2));
  print(Sum7(1, b: 3, a: 2));
}

//zorunlu parametreler

//01-zorunlu parametreler
int Sum1(int a, int b) {
  return a + b;
}

//02-opsiyonel parametreli metotlar
int Sum2([int a = 0, int b = 0]) {
  return a + b;
}

//03-Hibrit parametreli metotlar
int Sum3(int c, [int a = 0, int b = 0]) {
  // zorunlu olanları en başa yazmamız gerekir int c gibi
  // opsiyonel olan int a ve int b gibi olanları sonradan yazmamız gerekir
  // yani int Sum3([int a = 0, int b = 0],int c) bu şekilde kullanım hatalıdır
  return a + b + c;
}

//04-İsimli parametreli + opsiyonel metotlar
int Sum4({int a = 0, int b = 0}) {
  // isimli parametreli metotlarda da varsayılan değerlerin atanması gerekir
  // bu parametre çeşiti daha çok tercih edilir
  // bu parametrede değişkenin adıyla işlem yapıldığı için bize çok avantaj sağlar
  return a + b;
}

//05-hibrit isimli parametreli + opsiyonel metotlar
int Sum5(int c, {int a = 0, int b = 0}) {
  return a + b;
}

//06-hibrit + isimli parametreli + zorunlu , metotlar
int Sum6(int c, {required a, required int b}) {
  // required = zorunlu demek
  return a + b;
}

//07-hibrit , isimli parametreli + zorunlu/opsiyonel , metotlar
int Sum7(int c, {required int a, int b = 0}) {
  return a + b;
}
