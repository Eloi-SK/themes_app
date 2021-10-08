// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<MaterialColor>? _$primaryComputed;

  @override
  MaterialColor get primary =>
      (_$primaryComputed ??= Computed<MaterialColor>(() => super.primary,
              name: 'HomeStoreBase.primary'))
          .value;
  Computed<Color>? _$colorComputed;

  @override
  Color get color => (_$colorComputed ??=
          Computed<Color>(() => super.color, name: 'HomeStoreBase.color'))
      .value;

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setColor(Color color) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setColor');
    try {
      return super.setColor(color);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primary: ${primary},
color: ${color}
    ''';
  }
}
