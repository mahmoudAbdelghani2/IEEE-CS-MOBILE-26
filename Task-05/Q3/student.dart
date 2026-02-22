import 'full_name.dart';

class Student {
  int? _studentID;
  int? _registrationNumber;
  FullName? _studentName;
  List<int> marks = [];
  set studentID(int studentID) => this._studentID = studentID;

  int get studentID => this._studentID!;

  set registrationNumber(int registrationNumber) =>
      this._registrationNumber = registrationNumber;

  int get registrationNumber => this._registrationNumber!;

  set studentName(FullName studentName) => this._studentName = studentName;

  FullName get studentName => this._studentName!;

  addMarks(int value) {
    if (value > 0)
      marks.add(value);
    else
      marks.add(0);
  }
}
