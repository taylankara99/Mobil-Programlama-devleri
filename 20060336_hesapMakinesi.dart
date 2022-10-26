import 'dart:io';

void main() {
  double sayi1, sayi2;
  String islem, secim;

  print("ilk sayiyi giriniz: ");
  sayi1 = double.parse(stdin.readLineSync()!);
  print("ikinci sayiyi giriniz: ");
  sayi2 = double.parse(stdin.readLineSync()!);
  print("""
Toplama (+)
Cikarma (-)
Carpma (*)
Bolme (/)
yapilacak islemi seciniz: 
""");
  islem = stdin.readLineSync()!;

  switch (islem) {
    case '+':
      print("islem sonucu: ${sayi1 + sayi2}");
      break;
    case '-':
      print("islem sonucu: ${sayi1 - sayi2}");
      break;
    case '*':
      print("islem sonucu:${sayi1 * sayi2}");
      break;
    case '/':
      print("islem sonucu: ${sayi1 / sayi2}");
      break;
    default:
      print("gecersiz islem secimi tekrar deneyiniz...");
      return main();
  }

  print("""
  baska bir islem icin 'x' , 
  cikis yapmak icin ise herhangi bir tusa basiniz...
      """);
  secim = stdin.readLineSync()!;
  if (secim == 'x') {
    return main();
  }

  print("Shutting Down...");
  exit(1);
}
