
import 'package:book_timer/app/modules/project/notes/controller/note_controller.dart';
import 'package:book_timer/app/modules/project/notes/note_page.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class NotesModule extends Module{

  @override
  List<Bind<Object>> get binds => [
    BlocBind.lazySingleton((i) => NoteController())
  ];


  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) {

      final ProjectViewModel projectViewModel = args.data;
      return  NotePage(controller: Modular.get()..setProject(projectViewModel));
    })
  ];
}