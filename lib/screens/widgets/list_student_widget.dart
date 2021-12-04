import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_demo/db/function/db_functions.dart';
import 'package:hive_demo/db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      // Hive.box('student_db').putAt(index, data.id!);
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      if (data.id != null) {
                        deleteStudent(data.id!);
                      } else {
                        print('Student id is null. unable to delete');
                      }
                    },
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: studentList.length,
        );
      },
    );
  }
}
