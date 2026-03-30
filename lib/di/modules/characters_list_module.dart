import 'package:effective_test_app/src/common/utils/dotenv_util.dart';
import 'package:effective_test_app/src/features/characters/list/data/datasources/api/characters_list_api.dart';
import 'package:effective_test_app/src/features/characters/list/data/datasources/characters_list_remote_data_source.dart';
import 'package:effective_test_app/src/features/characters/list/data/repositories/characters_list_repository_impl.dart';
import 'package:effective_test_app/src/features/characters/list/domain/repositories/characters_list_repository.dart';
import 'package:effective_test_app/src/features/characters/list/domain/usecases/characters_list_usecase.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_bloc.dart';
import 'package:get_it/get_it.dart';

void charactersListModule(GetIt getIt) {
  getIt.registerLazySingleton<CharactersListApi>(
    () => CharactersListApi(getIt(), baseUrl: Env.get('BASE_URL')),
  );

  getIt.registerLazySingleton<CharactersListRemoteDataSource>(
    () => CharactersListRemoteDataSourceImpl(getIt()),
  );

  getIt.registerLazySingleton<CharactersListRepository>(
    () => CharactersListRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<CharactersListUseCase>(
    () => CharactersListUseCase(getIt<CharactersListRepository>()),
  );

  getIt.registerFactory<CharactersListBloc>(
        () => CharactersListBloc(getIt<CharactersListUseCase>()),
  );
}
