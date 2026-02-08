import 'dart:io';
void main(){
  print("Enter a temperature in Celsius : ");
  double tempC= double.tryParse(stdin.readLineSync()!)!;
  double? tempF = (tempC * (9/5))+32;
  //F = C * 9/5 + 32.
  print("The temperature in Celsius is : $tempC");
  print("The temperature in Fahrenheit is : $tempF ");
}