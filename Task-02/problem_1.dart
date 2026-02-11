import 'dart:io';

void main() {
  print("Enter a valid number: ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  List<int> divs = [];
  for (int i = 1; i * i <= n; i++) {
    if (n % i == 0) {
      divs.add(i);
      if (i * i != n) {
        divs.add(n ~/ i);
      }
    }
  }

  print(divs);
}
