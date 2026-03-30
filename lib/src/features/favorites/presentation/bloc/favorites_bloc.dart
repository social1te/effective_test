import 'dart:async';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/favorites/domain/models/sorting_model.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/add_favorite_usecase.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/get_favorite_usecase.dart';
import 'package:effective_test_app/src/features/favorites/domain/usecases/remove_favorite_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'favorites_event.dart';
import 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final GetFavoritesUseCase _getFavorites;
  final AddFavoriteUseCase _addFavorite;
  final RemoveFavoriteUseCase _removeFavorite;

  FavoritesBloc({
    required GetFavoritesUseCase getFavorites,
    required AddFavoriteUseCase addFavorite,
    required RemoveFavoriteUseCase removeFavorite,
  })  : _getFavorites = getFavorites,
        _addFavorite = addFavorite,
        _removeFavorite = removeFavorite,
        super(const FavoritesState.initial()) {
    on<LoadFavorites>(_onLoadFavorites);
    on<AddFavorite>(_onAddFavorite);
    on<RemoveFavorite>(_onRemoveFavorite);
    on<ToggleFavorite>(_onToggleFavorite);
    on<ChangeSortType>(_onChangeSortType);
  }

  Future<void> _onLoadFavorites(
      LoadFavorites event,
      Emitter<FavoritesState> emit,
      ) async {
    emit(const FavoritesState.loading());

    try {
      final favorites = await _getFavorites();
      final favoriteIds = favorites.map((f) => f.id).toSet();
      final sorted = _sortCharacters(favorites, SortingModel.nameAsc);

      emit(FavoritesState.loaded(
        favorites: sorted,
        favoriteIds: favoriteIds,
        sortingModel: SortingModel.nameAsc,
      ));
    } catch (e) {
      emit(FavoritesState.error(
        message: e.toString(),
        favorites: [],
      ));
    }
  }

  Future<void> _onAddFavorite(
      AddFavorite event,
      Emitter<FavoritesState> emit,
      ) async {
    await _addFavorite(event.character);

    if (state is FavoritesLoaded) {
      final currentState = state as FavoritesLoaded;
      final updated = [...currentState.favorites, event.character];
      final sorted = _sortCharacters(updated, currentState.sortingModel);

      emit(FavoritesState.loaded(
        favorites: sorted,
        favoriteIds: {...currentState.favoriteIds, event.character.id},
        sortingModel: currentState.sortingModel,
      ));
    }
  }

  Future<void> _onRemoveFavorite(
      RemoveFavorite event,
      Emitter<FavoritesState> emit,
      ) async {
    await _removeFavorite(event.characterId);

    if (state is FavoritesLoaded) {
      final currentState = state as FavoritesLoaded;
      final updated = currentState.favorites
          .where((f) => f.id != event.characterId)
          .toList();
      final sorted = _sortCharacters(updated, currentState.sortingModel);

      emit(FavoritesState.loaded(
        favorites: sorted,
        favoriteIds: currentState.favoriteIds
            .where((id) => id != event.characterId)
            .toSet(),
        sortingModel: currentState.sortingModel,
      ));
    }
  }

  void _onChangeSortType(
      ChangeSortType event,
      Emitter<FavoritesState> emit,
      ) {
    if (state is! FavoritesLoaded) return;
    final currentState = state as FavoritesLoaded;

    final sorted = _sortCharacters(currentState.favorites, event.sortType);

    emit(FavoritesState.loaded(
      favorites: sorted,
      favoriteIds: currentState.favoriteIds,
      sortingModel: event.sortType,
    ));
  }

  Future<void> _onToggleFavorite(
      ToggleFavorite event,
      Emitter<FavoritesState> emit,
      ) async {
    if (state is! FavoritesLoaded) return;
    final currentState = state as FavoritesLoaded;

    final isFav = currentState.favoriteIds.contains(event.character.id);

    if (isFav) {
      await _onRemoveFavorite(RemoveFavorite(event.character.id), emit);
    } else {
      await _onAddFavorite(AddFavorite(event.character), emit);
    }
  }

  List<Character> _sortCharacters(
      List<Character> characters,
      SortingModel sortType,
      ) {
    final sorted = List<Character>.from(characters);

    switch (sortType) {
      case SortingModel.nameAsc:
        sorted.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
        break;
      case SortingModel.nameDesc:
        sorted.sort((a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
        break;
      case SortingModel.status:
        sorted.sort((a, b) => a.status.toLowerCase().compareTo(b.status.toLowerCase()));
        break;
      case SortingModel.recentlyAdded:
        sorted.sort((a, b) => b.created.compareTo(a.created));
        break;
    }

    return sorted;
  }

  bool isCharacterFavorite(int characterId) {
    if (state is! FavoritesLoaded) return false;
    return (state as FavoritesLoaded).favoriteIds.contains(characterId);
  }
}