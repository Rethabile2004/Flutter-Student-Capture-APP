//
// Coder                    : Rethabile Eric Siase
// Time taken to complete   : 2 hours
// Number of external help  : 0
// Purpose                  : To demonstrate basic navigation and passing data through screens
//

import 'package:flutter/material.dart';
import 'package:main_test_2025/models/student.dart';

class StudentViewModel with ChangeNotifier {
  Student student =
      Student(studNo: '', name: '', surname: '', email: '', course: '');

  String get studNo => student.studNo;
  String get name => student.name;
  String get surname => student.surname;
  String get email => student.email;
  String get course => student.course;

  void updateStudentNo(String newStudentNo) {
    student.studNo = newStudentNo;
    notifyListeners();
  }

  void updateName(String newName) {
    student.name = newName;
    notifyListeners();
  }

  void updateSurname(String newSurname) {
    student.surname = newSurname;
    notifyListeners();
  }

  void updateEmail(String newEmail) {
    student.email = newEmail;
    notifyListeners();
  }

  void updateCourse(String newCourse) {
    student.course = newCourse;
    notifyListeners();
  }
}
