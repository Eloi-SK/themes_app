// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStoreBase, Store {
  final _$themeAtom = Atom(name: '_AppStoreBase.theme');

  @override
  ThemeData get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(ThemeData value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$primaryAtom = Atom(name: '_AppStoreBase.primary');

  @override
  MaterialColor get primary {
    _$primaryAtom.reportRead();
    return super.primary;
  }

  @override
  set primary(MaterialColor value) {
    _$primaryAtom.reportWrite(value, super.primary, () {
      super.primary = value;
    });
  }

  final _$_AppStoreBaseActionController =
      ActionController(name: '_AppStoreBase');

  @override
  void changeTheme(Color color) {
    final _$actionInfo = _$_AppStoreBaseActionController.startAction(
        name: '_AppStoreBase.changeTheme');
    try {
      return super.changeTheme(color);
    } finally {
      _$_AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme},
primary: ${primary}
    ''';
  }
}
