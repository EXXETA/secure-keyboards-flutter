import 'package:flutter/material.dart';
import 'package:flutter_keyboard_identifier/views/screen_keyboard_validation.dart';
import 'package:flutter_keyboard_identifier/views/view_keyboard_identifier.dart';

void main() {
  runApp(const KeyboardIdentifierApp());
}

class KeyboardIdentifierApp extends StatelessWidget {
  const KeyboardIdentifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ScreenKeyboardIdentifier(),
    );
  }
}
