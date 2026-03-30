import 'package:effective_test_app/src/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:effective_test_app/src/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/add_favorite_usecase.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/get_favorite_usecase.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/remove_favorite_usecase.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:get_it/get_it.dart';

void favoritesModule(GetIt getIt) {
  getIt.registerLazySingleton<FavoritesRepository>(
        () => FavoritesRepositoryImpl(),
  );

  getIt.registerLazySingleton<GetFavoritesUseCase>(
        () => GetFavoritesUseCase(getIt<FavoritesRepository>()),
  );

  getIt.registerLazySingleton<AddFavoriteUseCase>(
        () => AddFavoriteUseCase(getIt<FavoritesRepository>()),
  );

  getIt.registerLazySingleton<RemoveFavoriteUseCase>(
        () => RemoveFavoriteUseCase(getIt<FavoritesRepository>()),
  );

  getIt.registerLazySingleton<FavoritesBloc>(
        () => FavoritesBloc(
      getFavorites: getIt<GetFavoritesUseCase>(),
      addFavorite: getIt<AddFavoriteUseCase>(),
      removeFavorite: getIt<RemoveFavoriteUseCase>(),
    ),
  );
}