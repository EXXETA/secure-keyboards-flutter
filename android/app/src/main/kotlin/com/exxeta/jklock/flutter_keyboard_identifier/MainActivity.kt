package com.exxeta.jklock.flutter_keyboard_identifier

import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor, "flutterkeyboard").setMethodCallHandler { call, result ->
            if (call.method == "getKeyboardIdentifier") {
                result.success(getKeyboardIdentifier())
            }
        }
    }

    private fun getKeyboardIdentifier(): String {
        val vendor = Settings.Secure.getString(this.contentResolver, Settings.Secure.DEFAULT_INPUT_METHOD)
        val keyboardIdentifier = vendor.split("/").firstOrNull() ?: ""
        return keyboardIdentifier
    }
}
