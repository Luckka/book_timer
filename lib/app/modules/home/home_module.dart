
import 'package:book_timer/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module{
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context,args) => const HomePage())
  ];
}