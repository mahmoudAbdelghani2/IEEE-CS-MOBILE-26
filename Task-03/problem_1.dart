import 'dart:io';

int dblLinear(int n) {
  List<int> nums = [1];
  int L = 0, R = 0;
  for (int i = 1; i <= n; i++) {
    int x = 2 * nums[L] + 1;
    int y = 3 * nums[R] + 1;
    if (x == y) {
      nums.add(x);
      L++;
      R++;
    } else if (x > y) {
      nums.add(y);
      R++;
    } else if (y > x) {
      nums.add(x);
      L++;
    }
  }
  return nums[n];
}

void main() {
  print("Enter a valid index: ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  print("Your Value is: ${dblLinear(n)}");
}
