import 'package:bmi_app/bmi_app.dart' as bmi_app;
import 'dart:io';

double computeBMI(double height, double mass) {
  return mass / (height * height);
}

double lessThanThis(double n) => n - double.minPositive;
void main(List<String> arguments) {
  late double height, mass;

  print("Boyunuzu girin (metre):");
  height = double.parse(stdin.readLineSync()!);
  print("Kilonuzu girin (kilogram):");
  mass = double.parse(stdin.readLineSync()!);
  var bmi = computeBMI(height, mass);
  print("VKİ'niz: $bmi kg/m^2");

  if (bmi < 20) {
    print("Zayıf");
  } else if (bmi >= 20 && bmi <= lessThanThis(25)) {
    print("Normal");
  } else if (bmi >= 25 && bmi <= lessThanThis(30)) {
    print("Hafif şişman");
  } else if (bmi >= 30 && bmi <= lessThanThis(35)) {
    print("Şişman");
  } else if (bmi >= 35 && bmi <= lessThanThis(45)) {
    print("Sağlık açısından önemli");
  } else {
    print("Acilen diyetisyene gitmen lazım abla");
  }
}
