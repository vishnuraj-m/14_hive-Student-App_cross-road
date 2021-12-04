import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late final String name;

  @HiveField(2)
  late final String age;

  StudentModel({required this.name, required this.age, this.id});
}
