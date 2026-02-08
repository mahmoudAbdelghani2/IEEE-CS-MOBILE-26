import 'dart:io';

void main() {
  print("Enter a String 1  : ");
  String? str1 = stdin.readLineSync();
  print("Enter a String 2  : ");
  String? str2 = stdin.readLineSync();
  String concatenatedStr = '$str1 $str2';
  String subStr = concatenatedStr.substring(0, 5);
  print("Concatenated: $concatenatedStr");
  print("Length: ${concatenatedStr.length}");
  print("Substring: $subStr");
  print("Uppercase: ${concatenatedStr.toUpperCase()}");
  print("Lowercase: ${concatenatedStr.toLowerCase()}");
}
