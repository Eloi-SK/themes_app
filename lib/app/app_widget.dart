import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themes_app/app/app_store.dart';

class AppWidget extends StatelessWidget {
  
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Modular.get<AppStore>();
    return Observer(
      builder: (context) {
        return MaterialApp(
          title: 'Flutter Slidy',
          theme: store.theme,
        ).modular();
      }
    );
  }
}