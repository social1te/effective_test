part of 'theme_bloc.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.loadTheme() = LoadTheme;
  const factory ThemeEvent.changeTheme(AppThemeMode mode) = ChangeTheme;
}
