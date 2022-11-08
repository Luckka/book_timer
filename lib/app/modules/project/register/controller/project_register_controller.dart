import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:book_timer/app/services/projects/project_service.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';

import '../../../../entities/project_status.dart';
part 'project_register_state.dart';

class ProjectRegisterController extends Cubit<ProjectRegisterStatus> {
  ProjectService _projectService;
  ProjectRegisterController({required ProjectService projectService})
      : _projectService = projectService,
        super(ProjectRegisterStatus.initial);

  Future<void> register(String name, int estimate) async {
    try {
      emit(ProjectRegisterStatus.loading);
      final projectViewModel = ProjectViewModel(
        name: name,
        estimate: estimate,
        status: ProjectStatus.em_andamento,
        tasks: [],
      );
      await _projectService.register(projectViewModel);
      emit(ProjectRegisterStatus.sucess);
    } catch (e,s) {
      log('Erro ao salvar livro', error: e, stackTrace: s);
      emit(ProjectRegisterStatus.failure);
    }
  }
}
