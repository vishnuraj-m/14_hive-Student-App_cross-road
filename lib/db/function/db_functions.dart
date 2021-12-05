import 'package:flutter/cupertino.dart';
import 'package:hive_demo/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel value) async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  // final _id = await studentDB.add(value);
  // value.id = _id;
  studentListNotifier.value.add(value);
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  studentListNotifier.notifyListeners();
}

Future<void> getAllStudents() async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  // studentListNotifier.value.addAll(studentDB.values);
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int id) async {
  // final studentDB = await Hive.openBox<StudentModel>('student_db');
  // await studentDB.delete(id);
  getAllStudents();
}
