import 'dart:io';
void main(){
  print("Enter a number : ");
  String? strNum= stdin.readLineSync();
  double? doubleNum =double.tryParse(strNum!);
  int intNum = doubleNum!.toInt();
  print("Integer: $intNum");
  print("Double: $doubleNum");
}