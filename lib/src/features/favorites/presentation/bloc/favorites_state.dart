import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/favorites/domain/models/sorting_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = FavoritesInitial;
  const factory FavoritesState.loading() = FavoritesLoading;
  const factory FavoritesState.loaded({
    required List<Character> favorites,
    required SortingModel sortingModel,
    @Default({}) Set<int> favoriteIds,
  }) = FavoritesLoaded;
  const factory FavoritesState.error({
    required String message,
    required List<Character> favorites,
    @Default(SortingModel.nameAsc) SortingModel sortType,
  }) = FavoritesError;
}