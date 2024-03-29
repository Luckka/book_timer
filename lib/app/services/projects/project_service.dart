import 'package:book_timer/app/entities/project_status.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectViewModel projectViewModel);
  Future<List<ProjectViewModel>> findByStatus(ProjectStatus status);
}