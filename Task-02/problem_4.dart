import 'dart:io';

void main() {
  print("Enter the size of list you need: ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  List<int> nums = [];
  int sum = 0;
  for (int i = 0; i < n; i++) {
    print("Enter element ${i + 1}");
    int temp = int.tryParse(stdin.readLineSync()!)!;
    nums.add(temp);
    sum += (temp * temp);
  }

  print("the square sum is: $sum");
}

/*
the problem as a function
num squareSum(List numbers) {
  num sum=0;
  int n=numbers.length;
  for (int i = 0; i < n; i++) {
    sum = sum + (numbers[i] * numbers[i]);
  }
  return sum;
}
 */
