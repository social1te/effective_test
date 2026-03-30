import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/favorites/domain/repositories/favorites_repository.dart';

class AddFavoriteUseCase {
  final FavoritesRepository _repository;

  AddFavoriteUseCase(this._repository);

  Future<void> call(Character character) async {
    await _repository.addFavorite(character);
  }
}