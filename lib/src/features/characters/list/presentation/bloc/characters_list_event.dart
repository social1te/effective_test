import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_list_event.freezed.dart';

@freezed
sealed class CharactersListEvent with _$CharactersListEvent {
  const factory CharactersListEvent.load({required int page}) = LoadCharactersEvent;
  const factory CharactersListEvent.loadNextPage({required int page}) = LoadNextPageEvent;
  const factory CharactersListEvent.refresh() = RefreshCharactersEvent;
}