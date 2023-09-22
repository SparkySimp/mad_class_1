import 'package:bmi_app/bmi_app.dart' as bmi_app;
import 'dart:io';

double computeBMI(double height, double mass) {
  return mass / (height * height);
}

void main(List<String> arguments) {
  late double height, mass;

  print("Boyunuzu girin (metre):");
  height = double.parse(stdin.readLineSync()!);
  print("Kilonuzu girin (kilogram):");
  mass = double.parse(stdin.readLineSync()!);

  print("VKİ'niz: ${computeBMI(height, mass)}kg/m^2");
}
