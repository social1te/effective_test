import 'package:effective_test_app/src/features/characters/list/data/datasources/characters_list_remote_data_source.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/domain/repositories/characters_list_repository.dart';

import '../mappers/characters_response_dto_mapper.dart';

class CharactersListRepositoryImpl implements CharactersListRepository {
  final CharactersListRemoteDataSource _dataSource;

  CharactersListRepositoryImpl(this._dataSource);

  @override
  Future<List<Character>> getCharactersPage(int page) async {
    final dto = await _dataSource.getCharacters(page);
    return dto.results.map((e) => e.toDomain()).toList();
  }
}