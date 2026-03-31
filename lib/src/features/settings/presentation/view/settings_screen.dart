import 'package:effective_test_app/src/common/extensions/context_extensions.dart';
import 'package:effective_test_app/src/features/wrapper/domain/models/app_theme_mode.dart';
import 'package:effective_test_app/src/features/wrapper/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = context.colorExt;

    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is ThemeLoaded) {
            final isDark = state.mode == AppThemeMode.dark;
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: context.colorExt.secondaryBackgroundColor,
                    borderRadius: BorderRadiusGeometry.circular(16)
                  ),
                  child: ListTile(
                    leading: Icon(
                      isDark ? Icons.dark_mode : Icons.light_mode,
                      size: 28,
                      color: themeColors.accentColor,
                    ),
                    title: const Text('Тёмная тема'),
                    trailing: Switch(
                      value: isDark,
                      onChanged: (value) {
                        context.read<ThemeBloc>().add(
                          ThemeEvent.changeTheme(
                            value ? AppThemeMode.dark : AppThemeMode.light,
                          ),
                        );
                      },
                      activeThumbColor: themeColors.accentColor,
                    ),
                  ),
                ),
              ],
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
