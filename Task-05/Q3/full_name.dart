class FullName {
  String? _firstName;
  String? _middleName;
  String? _surName;

  set firstName(String firstName) => this._firstName = firstName;
  String get firstName => this._firstName ?? "";

  set middleName(String middleName) => this._middleName = middleName;
  String get middleName => this._middleName ?? "";

  set surName(String surName) => this._surName = surName;
  String get surName => this._surName ?? "";

  String get fullName => firstName + " " + middleName + " " + surName + ".";
}
