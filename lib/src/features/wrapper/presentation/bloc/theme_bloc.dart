import 'package:bloc/bloc.dart';
import 'package:effective_test_app/src/features/wrapper/domain/models/app_theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  static const String _themeKey = 'app_theme_mode';

  ThemeBloc() : super(const ThemeState.initial()) {
    on<LoadTheme>(_onLoadTheme);
    on<ChangeTheme>(_onChangeTheme);
  }

  Future<void> _onLoadTheme(
      LoadTheme event,
      Emitter<ThemeState> emit,
      ) async {
    emit(const ThemeState.loading());

    try {
      final prefs = await SharedPreferences.getInstance();
      final saved = prefs.getString(_themeKey);

      final mode = saved != null
          ? AppThemeMode.values.firstWhere(
            (e) => e.name == saved,
        orElse: () => AppThemeMode.system,
      )
          : AppThemeMode.system;

      emit(ThemeState.loaded(mode: mode));
    } catch (e) {
      emit(ThemeState.error(message: e.toString()));
    }
  }

  Future<void> _onChangeTheme(
      ChangeTheme event,
      Emitter<ThemeState> emit,
      ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_themeKey, event.mode.name);

      emit(ThemeState.loaded(mode: event.mode));
    } catch (e) {
      emit(ThemeState.error(message: e.toString()));
    }
  }

  ThemeMode get themeMode {
    if (state is! ThemeLoaded) return ThemeMode.system;

    switch ((state as ThemeLoaded).mode) {
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
      case AppThemeMode.system:
        return ThemeMode.system;
    }
  }
}
