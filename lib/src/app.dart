import 'package:effective_test_app/src/config/router/router.dart';
import 'package:effective_test_app/src/config/styles/themes.dart';
import 'package:effective_test_app/src/features/wrapper/presentation/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.instance<ThemeBloc>()..add(const ThemeEvent.loadTheme()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final themeBloc = context.read<ThemeBloc>();
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            themeMode: themeBloc.themeMode,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
