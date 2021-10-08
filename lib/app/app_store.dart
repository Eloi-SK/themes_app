import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:themes_app/app/utils/colors/palette.dart';

part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;
abstract class _AppStoreBase with Store {

  @observable
  ThemeData theme = ThemeData.light();

  @observable
  MaterialColor primary = Colors.blue;

  @action
  void changeTheme(Color color) {
    final palette = Palette(color);
    
    primary = palette.primary;
    theme = ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: palette.primary)
    );
  }
}