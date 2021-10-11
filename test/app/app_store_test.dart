import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:themes_app/app/app_store.dart';

void main() {
  late AppStore store;

  setUpAll(() {
    store = AppStore();
  });

  test('should change app theme', () async {
    expect(store.primary, equals(Colors.blue));
    store.changeTheme(const Color(0xFF34EB8F));
    expect(store.primary.shade500, equals(const Color(0xFF34EB8F)));
  });
}