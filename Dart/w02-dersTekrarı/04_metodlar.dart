//entry point/giriş metodu

import '../w02/02_donguler.dart';
import '../w02/04_metodlar.dart';

void main(List<String> args) {
  /*
  print(Faktoriyel(5));

  int Sum(int a, int b) => a + b;
  print(sum(2, 2));

  print(MatematikIslemi(Sum, 5, 6));

  print(IslemSec(1)(4, 5));
*/
  print(product(5, 8));
}
// fonksiyon /metodlar/routine/yordam/procedure

//1. void metodlar,parametresiz
Toplam1() {
  // void Toplam1()
  int a = 4;
  int b = 5;

  print(a + b);
}

//2.void metodlar,parametreli
void Toplam2(int a, int b) {
  print(a + b);
// İşlemler
}

//3. tip/type metodlar , parametreli
int Toplam3() {
  int a = 4;
  int b = 5;
  return a + b;
}

//4. tip/type metodlar , parametreli / return olmalıdır
int Toplam5(int a, int b) {
  // İşlemler
  return a + b;
}

//5.Recursive / Özyinelemeli metodlar

int Faktoriyel(int n) {
  if (n <= 0) {
    return 1;
  }

  return n * Faktoriyel(n - 1);
}

//6. Fat arrow/lambda expression/metodlar
// method içine method yazmamız gerekirse genelde fat arrowu tercih ederiz
int Sum(int a, int b) => a + b;
int Sum1(int a, int b) {
  return a + b;

// İkisi aynı yazımdır
}

double Divide(int a, int b) => a / b;
//7. Fonksiyon tipli , yada fonskiyon parametreli fonksiyonlar
int MatematikIslemi(dynamic Function(int, int) islem, int a, int b) {
  // islem =>call back denir
  return islem(a, b);
}

Function IslemSec(int islemKod) {
  if (islemKod == 1) {
    return Sum;
  }
  if (islemKod == 2) {
    return Divide;
  }
  return Toplam5;
}

//8.Anonim/Anonymous metodlar

var Product = (int a, int b) {
//İşlemler
  return a * b;
};
