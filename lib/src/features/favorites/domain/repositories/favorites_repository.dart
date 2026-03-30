import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';

abstract class FavoritesRepository {
  Future<List<Character>> getFavorites();
  Future<void> addFavorite(Character character);
  Future<void> removeFavorite(int characterId);
  Future<void> clearAll();
}