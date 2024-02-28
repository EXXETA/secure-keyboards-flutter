import 'dart:io';

import 'package:flutter/services.dart';

class KeyboardValidationUtil {
  static const MethodChannel _channel = MethodChannel('flutterkeyboard');
  static const List<String> _allowedKeyboardIdentifiers = [
    'com.android.inputmethod.latin',
    'com.google.android.inputmethod.latin',
    'com.google.android.tts',
    // ... add more identifiers
  ];

  Future<String?> getKeyboardIdentifier() async {
    String? identifier;
    try {
      identifier = await _channel.invokeMethod('getKeyboardIdentifier');
    } catch (e) {
      print("An error occured while fetching the keyboard identifier");
    }
    return identifier;
  }

  Future<bool> isKeyboardValid() async {
    if (Platform.isIOS) {
      return true;
    }

    final identifier = await getKeyboardIdentifier();
    if (identifier == null) {
      return false;
    }

    return _allowedKeyboardIdentifiers.contains(identifier);
  }
}