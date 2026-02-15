import 'dart:io';

int potatoes(int p0, int w0, int p1) {
  int result = (w0 * (100 - p0)) ~/ (100 - p1);
  return result;
}
// int potatoes(int p0, int w0, int p1) {
//   int per_p0 = p0 * 0.01, per_p1 = p1 * 0.01;
//   int total = (w0 - w0 * per_p0) ~/ (1 - per_p1);
//   return total;
// }

void main() {
  print("Enter the Info. of your Potatoe: ");
  int p0 = int.tryParse(stdin.readLineSync()!)!;
  int w0 = int.tryParse(stdin.readLineSync()!)!;
  int p1 = int.tryParse(stdin.readLineSync()!)!;
  print(
    "The Weight of Potatoe after coming out of the oven is : ${potatoes(p0, w0, p1)}",
  );
}
