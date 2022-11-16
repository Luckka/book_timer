import 'package:bloc/bloc.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';
import 'package:equatable/equatable.dart';

part 'project_detail_state.dart';




class ProjectDetailController extends Cubit<ProjectDetailState>{ 

  

    ProjectDetailController() : super(ProjectDetailState.initial());

    void setProject(ProjectViewModel projectViewModel){
      emit(state.copyWith(projectViewModel: projectViewModel, status: ProjectDetailStatus.complete));
    }

} 