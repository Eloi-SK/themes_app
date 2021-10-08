import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design Palette Generator'),
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(8),
          child: Observer(
            builder: (context) {
              return Column(
                children: [
                  buidBar(store.primary.shade100),
                  buidBar(store.primary.shade200),
                  buidBar(store.primary.shade300),
                  buidBar(store.primary.shade400),
                  buidBar(store.primary.shade500),
                  buidBar(store.primary.shade600),
                  buidBar(store.primary.shade700),
                  buidBar(store.primary.shade800),
                  buidBar(store.primary.shade900),
                ],
              );
            }
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openColorPicker,
        child: const Icon(Icons.color_lens),
      ),
    );
  }

  Widget buidBar(Color color) {
    return Container(
      color: color,
      height: 50,
    );
  }

  void openColorPicker() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: ColorPicker(
            pickerColor: store.color,
            onColorChanged: store.setColor,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }
}