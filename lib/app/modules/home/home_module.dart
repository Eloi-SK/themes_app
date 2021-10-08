import 'package:flutter_modular/flutter_modular.dart';
import 'package:themes_app/app/app_store.dart';
import '../home/home_store.dart'; 

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore(i<AppStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}