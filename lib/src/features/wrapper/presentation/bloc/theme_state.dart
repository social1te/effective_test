part of 'theme_bloc.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeInitial;
  const factory ThemeState.loading() = ThemeLoading;
  const factory ThemeState.loaded({
    @Default(AppThemeMode.system) AppThemeMode mode,
  }) = ThemeLoaded;
  const factory ThemeState.error({
    required String message,
  }) = ThemeError;
}
