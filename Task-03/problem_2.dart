import 'dart:io';

bool tidyNumber(int n) {
  bool flag = true;
  while (n != 0) {
    int dig1 = n % 10;
    n = n ~/ 10;
    int dig2 = n % 10;
    if (dig1 < dig2) {
      flag = false;
      break;
    }
  }
  return flag;
}

void main() {
  print("Enter a valid number: ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  tidyNumber(n)
      ? print("Your number is a tidy number")
      : print("Your number is not a tidy number");
}
