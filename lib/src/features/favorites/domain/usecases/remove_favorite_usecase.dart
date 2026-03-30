import '../repositories/favorites_repository.dart';

class RemoveFavoriteUseCase {
  final FavoritesRepository _repository;

  RemoveFavoriteUseCase(this._repository);

  Future<void> call(int characterId) async {
    await _repository.removeFavorite(characterId);
  }
}