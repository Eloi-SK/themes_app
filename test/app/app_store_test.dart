import 'package:flutter_test/flutter_test.dart';
import 'package:themes_app/app/app_store.dart';
 
void main() {
  late AppStore store;

  setUpAll(() {
    store = AppStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}