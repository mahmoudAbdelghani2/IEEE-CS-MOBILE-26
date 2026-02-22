import 'student.dart';
import 'student_event.dart';

class Postgraduate extends Student implements StudentEvent {
  @override
  double calcGPA() {
    double points = 0;
    for (var item in marks) {
      if (item >= 60 && item < 65) {
        points += 6;
      } else if (item >= 65 && item < 70) {
        points += 7;
      } else if (item >= 70 && item < 75) {
        points += 22 / 3;
      } else if (item >= 75 && item < 80) {
        points += 10;
      } else if (item >= 80 && item < 85) {
        points += 31 / 3;
      } else if (item >= 85 && item < 90) {
        points += 32 / 3;
      } else if (item >= 90 && item <= 100) {
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
        " Student GPA is: ${calcGPA().toStringAsFixed(2)}}";
  }
}
