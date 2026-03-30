import 'package:dio/dio.dart';
import 'package:effective_test_app/di/modules/characters_list_module.dart';
import 'package:effective_test_app/di/modules/favorites_module.dart';
import 'package:get_it/get_it.dart';

import '../core/network/dio_provider.dart';

final getIt = GetIt.instance;

Future<void> initDi() async {
  getIt.registerLazySingleton<Dio>(() => dioProvider());

  charactersListModule(getIt);
  favoritesModule(getIt);
}