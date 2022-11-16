import 'package:book_timer/app/entities/project_status.dart';
import 'package:book_timer/app/view_models/project_task_view_model.dart';

import '../entities/project.dart';

class ProjectViewModel {
  final int? id;
  final String name;
  final int estimate;
  final ProjectStatus status;
  final List<ProjectTaskViewModel> notes;

  ProjectViewModel(
      {this.id,
      required this.name,
      required this.estimate,
      required this.status,
      required this.notes});


  factory ProjectViewModel.fromEntity(Project project) {

      project.tasks.loadSync();

      return ProjectViewModel(
        id: project.id,
        name: project.name,
        estimate: project.estimate,
        status: project.status,
        notes: project.tasks.map(ProjectTaskViewModel.fromEntity).toList()
      );
  }

  
}
