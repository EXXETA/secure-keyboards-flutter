import 'dart:io';

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
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Center(
          child: Platform.isIOS
              ? const Text(
                  "You are using an iOS device.\n"
                  "This app will only validate Android keyboards.",
                  textAlign: TextAlign.center,
                )
              : const ViewKeyboardIdentifier(),
        ),
      ),
    );
  }
}
