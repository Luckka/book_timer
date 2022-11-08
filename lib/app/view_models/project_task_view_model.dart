import 'package:book_timer/app/entities/project_task.dart';

class ProjectTaskViewModel {
  int? id;
  String name;
  int duration;

  ProjectTaskViewModel({
    required this.id,
    required this.duration,
    required this.name
  });

  factory ProjectTaskViewModel.fromEntity(ProjectTask task) {
    return ProjectTaskViewModel(
      id: task.id,
      duration: task.duration,
      name: task.name
    );
  }
}
