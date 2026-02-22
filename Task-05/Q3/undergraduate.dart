import 'student.dart';
import 'student_event.dart';

class Undergraduate extends Student implements StudentEvent {
  @override
  double calcGPA() {
    double points = 0;
    for (var item in marks) {
      if (item >= 50 && item < 53) {
        points += 3;
      } else if (item >= 53 && item < 56) {
        points += 4;
      } else if (item >= 56 && item < 60) {
        points += 5;
      } else if (item >= 60 && item < 65) {
        points += 6;
      } else if (item >= 65 && item < 70) {
        points += 7;
      } else if (item >= 70 && item < 75) {
        points += 8;
      } else if (item >= 75 && item < 80) {
        points += 9;
      } else if (item >= 80 && item < 85) {
        points += 10;
      } else if (item >= 85 && item < 90) {
        points += 11;
      } else if (item >= 90 && item < 95) {
        points += 11.5;
      } else if (item >= 95 && item <= 100) {
        points += 12;
      }
    }

    return marks.length != 0 ? (points) / (marks.length * 3) : 0;
  }

  @override
  printInfo() {
    return "Student ID: $studentID" +
        " Student Name: " +
        studentName.fullName +
        " Student Registration Number: $registrationNumber" +
        " Student GPA is: ${calcGPA().toStringAsFixed(2)}";
  }
}
