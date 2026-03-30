import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';

import '../repositories/favorites_repository.dart';

class GetFavoritesUseCase {
  final FavoritesRepository _repository;

  GetFavoritesUseCase(this._repository);

  Future<List<Character>> call() async {
    return await _repository.getFavorites();
  }
}