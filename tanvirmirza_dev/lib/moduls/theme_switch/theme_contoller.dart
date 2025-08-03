import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  /// Observable ThemeMode (light/dark)
  final Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  /// Toggle between light and dark modes
  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }

    // Optional: Persist using SharedPreferences or GetStorage
  }

  /// Optionally initialize from system or saved preference
  void setThemeFromSystem(Brightness brightness) {
    themeMode.value = brightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}