import 'package:hive_ce/hive.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import '../../domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  static const String _boxName = 'favorites';

  Future<Box<Character>> _openBox() async {
    return await Hive.openBox<Character>(_boxName);
  }

  @override
  Future<List<Character>> getFavorites() async {
    final box = await _openBox();
    return box.values.toList();
  }

  @override
  Future<void> addFavorite(Character character) async {
    final box = await _openBox();
    await box.put(character.id, character);
  }

  @override
  Future<void> removeFavorite(int characterId) async {
    final box = await _openBox();
    await box.delete(characterId);
  }


  @override
  Future<void> clearAll() async {
    final box = await _openBox();
    await box.clear();
  }
}