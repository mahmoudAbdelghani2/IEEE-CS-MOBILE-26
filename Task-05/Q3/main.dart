import 'undergraduate.dart';
import 'postgraduate.dart';
import 'full_name.dart';

void main() {
  print('=== Student Management System ===\n');

  print('--- Creating Undergraduate Student ---');
  Undergraduate undergrad = Undergraduate();

  undergrad.studentID = 20210001;
  undergrad.registrationNumber = 101;

  FullName undergradName = FullName();
  undergradName.firstName = 'Ahmed';
  undergradName.middleName = 'Mohamed';
  undergradName.surName = 'Ali';
  undergrad.studentName = undergradName;

  undergrad.addMarks(85);
  undergrad.addMarks(92);
  undergrad.addMarks(78);
  undergrad.addMarks(95);
  undergrad.addMarks(88);

  print('Undergraduate marks: ${undergrad.marks}');
  print(undergrad.printInfo());

  print('\n--- Creating Postgraduate Student ---');

  Postgraduate postgrad = Postgraduate();

  postgrad.studentID = 20220002;
  postgrad.registrationNumber = 202;

  FullName postgradName = FullName();
  postgradName.firstName = 'Sara';
  postgradName.middleName = 'Hassan';
  postgradName.surName = 'Ibrahim';
  postgrad.studentName = postgradName;

  postgrad.addMarks(88);
  postgrad.addMarks(91);
  postgrad.addMarks(85);
  postgrad.addMarks(94);

  print('Postgraduate marks: ${postgrad.marks}');
  print(postgrad.printInfo());

  print('\n=== End of Program ===');
}
