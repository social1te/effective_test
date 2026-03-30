import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/favorites/domain/models/sorting_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_event.freezed.dart';

@freezed
sealed class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.loadFavorites() = LoadFavorites;
  const factory FavoritesEvent.addFavorite(Character character) = AddFavorite;
  const factory FavoritesEvent.removeFavorite(int characterId) = RemoveFavorite;
  const factory FavoritesEvent.toggleFavorite(Character character) = ToggleFavorite;
  const factory FavoritesEvent.changeSortType(SortingModel sortType) = ChangeSortType;
}