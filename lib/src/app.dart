import 'package:effective_test_app/src/config/router/router.dart';
import 'package:effective_test_app/src/config/styles/themes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
    );
  }
}
