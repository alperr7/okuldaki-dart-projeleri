void main(List<String> args) {
  //A-binary operatörler/ikili op.
  //01-Aritmetik Op. +,-,*,/,%   => sol_operand operator sag_operand => 1 + 2  ==> geriye sayısal değer döndürür
  double a = 1 / 9 + 8 * 9 - 9 + 5 - 15 % 3;
  //02-Assignment/Atama operatorleri => =,+=,-=,*=,/=,%=  => sol_operand operator sag_operand => int a; a=2; // atama yapar
  double a2 = 5;
  a2 *= 5; // a2 = a2 * 5;
  a2 += 1; // a2= a2 + 1;
  //03-Relational/İlişkisel Operatörler => <,>,>=,<=,!=,==, => sol_operand operator sag_operand => geriye boolean değer döndürür
  bool isOk1 = 1 != 1; // false cevabı döndürür
  //04-Logical/Mantıksal op => && , || => sol_operad operator sag_operand => 1+2 = geriye sayısal boolean döndürür
  bool isOk2 = ((1 < 5) && (8 == 9)) || (9 >= -9);

  //-------------------------------------
  //B-unary operatorler , tekli
  //04-Logical/Mantıksal op => ! => operator sag_operand => !(ture/false)  => geriye sayısal boolean döndür
  bool isOk3 = !(((1 < 5) && (8 == 9)) || (9 >= -9));
  //05-Increment/Decrement/Arttırma/Azaltma op =>  ++,-- => a++ , --a => geriye genelde sayısal değer döndürür
  double a3 = 5;
  a3++;
  a3 = ++a3 + --a2 * (a--);

  //C-ternary operatorler, üçlü op
  String cinsiyet = "Bayan";
  double yasSinir = cinsiyet == "Erkek" ? 1 : 0;
}
