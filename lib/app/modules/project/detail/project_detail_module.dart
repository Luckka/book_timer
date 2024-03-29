
import 'package:book_timer/app/modules/project/detail/controller/project_detail_controller.dart';
import 'package:book_timer/app/modules/project/detail/project_detail_page.dart';
import 'package:book_timer/app/view_models/project_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class ProjectDetailModule extends Module{

  @override
  List<Bind<Object>> get binds => [
    BlocBind.lazySingleton((i) => ProjectDetailController())
  ];


  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) {
      final ProjectViewModel projectViewModel = args.data;

      return ProjectDetailPage(projectDetailController: Modular.get()..setProject(projectViewModel));
    })
  ];
}