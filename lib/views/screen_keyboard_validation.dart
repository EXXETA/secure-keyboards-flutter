import 'package:flutter/material.dart';
import 'package:flutter_keyboard_identifier/views/view_keyboard_identifier.dart';

class ScreenKeyboardIdentifier extends StatelessWidget {
  const ScreenKeyboardIdentifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Keyboard Identifier Validation"),
      ),
      body: const Center(
        child: ViewKeyboardIdentifier(),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}