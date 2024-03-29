
import 'package:book_timer/app/entities/converters/project_status_converter.dart';
import 'package:book_timer/app/entities/project_status.dart';
import 'package:book_timer/app/entities/project_task.dart';
import 'package:isar/isar.dart';
import 'converters/project_status_converter.dart';

part 'project.g.dart';

@Collection()
class Project {
   @Id()
   int? id;
   late String name;
   late int estimate;
   @ProjectStatusConverter()
   late ProjectStatus status;
   final tasks = IsarLinks<ProjectTask>();
}