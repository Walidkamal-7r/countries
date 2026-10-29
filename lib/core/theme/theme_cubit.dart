import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static const String _themeKey = 'is_dark_mode';

  ThemeCubit() : super(ThemeMode.light) {
    _loadSavedTheme();
  }

  void toggleTheme() async {
    if (state == ThemeMode.light) {
      emit(ThemeMode.dark);
      await _saveTheme(true);
    } else {
      emit(ThemeMode.light);
      await _saveTheme(false);
    }
  }

  Future<void> _loadSavedTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isDark = prefs.getBool(_themeKey) ?? false;
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> _saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, isDark);
  }
}
