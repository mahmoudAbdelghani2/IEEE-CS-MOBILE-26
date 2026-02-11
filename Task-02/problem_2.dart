import 'dart:io';

void main() {
  print("Enter a valid string: ");
  String str = stdin.readLineSync()!;
  if (str.length % 2 == 0) {
    print('${str[str.length ~/ 2 - 1]}${str[str.length ~/ 2]}');
  } else {
    print(str[str.length ~/ 2]);
  }
}

/*
the problem as a function
String getMiddle(String s) {
  String res;
  if (s.length % 2 == 0) {
    res = s[s.length ~/ 2 - 1] + s[s.length ~/ 2];
  } else {
    res = s[s.length ~/ 2];
  }
  return res;
}
 */
