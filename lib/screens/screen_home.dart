import 'package:flutter/material.dart';
import 'package:hive_demo/db/function/db_functions.dart';
import 'package:hive_demo/screens/widgets/add_student_widget.dart';
import 'package:hive_demo/screens/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Students Master',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AddStudentWidget(),
            const Expanded(
              child: ListStudentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
