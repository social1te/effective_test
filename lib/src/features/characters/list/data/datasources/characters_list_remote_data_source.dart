import 'package:effective_test_app/src/features/characters/list/data/datasources/api/characters_list_api.dart';
import 'package:effective_test_app/src/features/characters/list/data/dto/response/characters_list_response_dto.dart';

abstract class CharactersListRemoteDataSource {
  Future<CharactersListResponseDto> getCharacters(int page);
}

class CharactersListRemoteDataSourceImpl implements CharactersListRemoteDataSource {
  final CharactersListApi _api;

  CharactersListRemoteDataSourceImpl(this._api);

  @override
  Future<CharactersListResponseDto> getCharacters(int page) async {
    return await _api.getCharacters(page);
  }
}
