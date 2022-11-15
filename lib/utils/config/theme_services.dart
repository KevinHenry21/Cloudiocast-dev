import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isLightMode';
  _saveThemeToBox(bool isLightMode) => _box.write(_key, isLightMode);

  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark;

   switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
