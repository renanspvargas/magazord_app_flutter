import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  void toggleTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
}
