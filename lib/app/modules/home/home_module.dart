
import 'package:book_timer/app/modules/home/controllers/home_controller.dart';
import 'package:book_timer/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class HomeModule extends Module{
  @override
  List<Bind> binds = [
    BlocBind.lazySingleton((i) => HomeController(projectService: i()))
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context,args) {
      final controller = Modular.get<HomeController>()..loadProjects();
      return HomePage(controller: controller);
    })
  ];
}