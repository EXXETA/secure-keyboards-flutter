import 'package:flutter/material.dart';
import 'package:flutter_keyboard_identifier/utils/keyboard_validation_util.dart';

class ViewKeyboardIdentifier extends StatefulWidget {
  const ViewKeyboardIdentifier({super.key});

  @override
  State<ViewKeyboardIdentifier> createState() => _ViewKeyboardIdentifierState();
}

class _ViewKeyboardIdentifierState extends State<ViewKeyboardIdentifier> {
  final _keyboardValidationUtil = KeyboardValidationUtil();
  String _keyboardIdentifier = "";
  bool _keyboardIsValid = false;

  @override
  void initState() {
    initKeyboard();
    super.initState();
  }

  void initKeyboard() async {
    _keyboardIdentifier = await _keyboardValidationUtil.getKeyboardIdentifier() ?? "";
    _keyboardIsValid = await _keyboardValidationUtil.isKeyboardValid();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Keyboard Identifier:"),
        Text(_keyboardIdentifier),
        const SizedBox(height: 16),
        Text(
          _keyboardIsValid ? "VALID" : "INVALID",
          style: TextStyle(
            color: _keyboardIsValid ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
