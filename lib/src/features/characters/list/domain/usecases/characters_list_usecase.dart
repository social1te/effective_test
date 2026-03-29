import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/domain/repositories/characters_list_repository.dart';

class CharactersListUseCase {
  final CharactersListRepository _repository;

  CharactersListUseCase(this._repository);

  Future<List<Character>> call(int page) {
    return _repository.getCharactersPage(page);
  }
}