import 'package:book_timer/app/modules/project/detail/project_detail_module.dart';
import 'package:book_timer/app/modules/project/notes/notes_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register/project_register_module.dart';

class ProjectModule extends Module{
  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/register', module: ProjectRegisterModule()),
    ModuleRoute('/detail', module: ProjectDetailModule()),
    ModuleRoute('/note', module: NotesModule())
  ];
  
}