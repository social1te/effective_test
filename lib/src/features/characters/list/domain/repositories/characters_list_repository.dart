import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';

abstract class CharactersListRepository {
  Future<List<Character>> getCharactersPage(int page);
}