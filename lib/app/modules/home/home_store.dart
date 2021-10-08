import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final AppStore appSore;

  HomeStoreBase(this.appSore);

  @computed
  MaterialColor get primary => appSore.primary;

  @computed
  Color get color => primary.shade500;

  @action
  void setColor(Color color) => appSore.changeTheme(color);
}