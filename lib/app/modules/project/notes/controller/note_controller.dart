import 'package:bloc/bloc.dart';

import '../../../../view_models/project_view_model.dart';

part 'note_state.dart';
class NoteController extends Cubit<NoteStatus>{

  late final ProjectViewModel _projectViewModel;

  NoteController(): super(NoteStatus.initial);

  void setProject(ProjectViewModel projectViewModel) => _projectViewModel = projectViewModel;
  
}