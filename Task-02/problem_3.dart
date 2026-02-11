import 'dart:io';

void main() {
  print("Enter number of test cases: ");
  int t = int.tryParse(stdin.readLineSync()!)!;
  int count = 1;
  while (t > 0) {
    print("Enter the value of x for point $count: ");
    int x = int.tryParse(stdin.readLineSync()!)!;
    print("Enter the value of y for point $count: ");
    int y = int.tryParse(stdin.readLineSync()!)!;
    if (x > 0 && y > 0) {
      print('Q1');
    } else if (x < 0 && y > 0) {
      print('Q2');
    } else if (x > 0 && y < 0) {
      print('Q4');
    } else if (x < 0 && y < 0) {
      print('Q3');
    }
    t--;
    count++;
  }
}

/*
the problem as a function
int quadrant(int x, int y) {
  int q=0;
  if (x > 0 && y > 0) {
      q=1;
    } else if (x < 0 && y > 0) {
      q=2;
    } else if (x > 0 && y < 0) {
      q=4;
    } else if (x < 0 && y < 0) {
      q=3;
    }
  return q;
}
 */
