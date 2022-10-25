
import 'package:book_timer/app/modules/login/controllers/login_controller.dart';
import 'package:book_timer/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class LoginModule extends Module{
  @override
  List<Bind> binds = [
      BlocBind.lazySingleton((i) => LoginController(authService: i()))
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context,args) =>  LoginPage(controller: Modular.get(),))
  ];
}