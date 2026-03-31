import 'package:effective_test_app/src/features/wrapper/presentation/bloc/theme_bloc.dart';
import 'package:get_it/get_it.dart';

void settingsModule(GetIt getIt) {
  getIt.registerLazySingleton<ThemeBloc>(
        () => ThemeBloc(),
  );
}