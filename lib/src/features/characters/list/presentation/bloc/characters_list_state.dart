import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_list_state.freezed.dart';

@freezed
sealed class CharactersListState with _$CharactersListState {
  const factory CharactersListState.initial() = CharactersListInitial;

  const factory CharactersListState.loading() = CharactersListLoading;

  const factory CharactersListState.loaded({
    required List<Character> characters,
    required int currentPage,
    required bool hasMore,
    @Default(false) bool isLoading,
  }) = CharactersListLoaded;

  const factory CharactersListState.error({
    required String message,
    required List<Character>? characters,
    @Default(true) bool canRetry,
  }) = CharactersListError;
}