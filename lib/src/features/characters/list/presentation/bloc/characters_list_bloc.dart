import 'dart:async';
import 'package:dio/dio.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/domain/usecases/characters_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'characters_list_event.dart';
import 'characters_list_state.dart';

class CharactersListBloc
    extends Bloc<CharactersListEvent, CharactersListState> {
  final CharactersListUseCase _useCase;

  CharactersListBloc(this._useCase) : super(const CharactersListState.initial()) {
    on<LoadCharactersEvent>(_onLoadCharacters);

    on<LoadNextPageEvent>(
      _onLoadNextPage,
      transformer: debounce(const Duration(milliseconds: 300)),
    );

    on<RefreshCharactersEvent>(_onRefreshCharacters);
  }

  bool _isRateLimitError(Object error) {
    return error is DioException && error.response?.statusCode == 429;
  }

  Future<void> _onLoadCharacters(
      LoadCharactersEvent event,
      Emitter<CharactersListState> emit,
      ) async {
    emit(const CharactersListState.loading());
    await _fetchCharacters(event.page, emit, isRefresh: false);
  }

  Future<void> _onLoadNextPage(
      LoadNextPageEvent event,
      Emitter<CharactersListState> emit,
      ) async {
    if (state is! CharactersListLoaded) return;
    final current = state as CharactersListLoaded;
    if (current.isLoading || !current.hasMore) return;

    emit(current.copyWith(isLoading: true));

    await _fetchCharacters(
      event.page,
      emit,
      isRefresh: false,
      currentData: current,
    );
  }

  Future<void> _onRefreshCharacters(
      RefreshCharactersEvent event,
      Emitter<CharactersListState> emit,
      ) async {
    if (state is! CharactersListLoaded) {
      emit(const CharactersListState.loading());
    }
    await _fetchCharacters(1, emit, isRefresh: true);
  }

  Future<void> _fetchCharacters(
      int page,
      Emitter<CharactersListState> emit, {
        required bool isRefresh,
        CharactersListLoaded? currentData,
      }) async {
    List<Character> mergeResults(List<Character> newResults) {
      if (isRefresh || currentData == null) return newResults;
      return [...currentData.characters, ...newResults];
    }

    try {
      final result = await _useCase(page);
      final mergedCharacters = mergeResults(result);

      emit(CharactersListState.loaded(
        characters: mergedCharacters,
        currentPage: page,
        hasMore: result.isNotEmpty,
        isLoading: false,
      ));
    } catch (e) {
      if (_isRateLimitError(e)) {
        await Future.delayed(const Duration(seconds: 15));

        try {
          final retryResult = await _useCase(page);
          final mergedCharacters = mergeResults(retryResult);

          emit(CharactersListState.loaded(
            characters: mergedCharacters,
            currentPage: page,
            hasMore: retryResult.isNotEmpty,
            isLoading: false,
          ));
          return;
        } catch (retryError) {
          emit(CharactersListState.error(
            message: retryError.toString(),
            characters: isRefresh ? null : currentData?.characters,
            canRetry: true,
          ));
          return;
        }
      }

      emit(CharactersListState.error(
        message: e.toString(),
        characters: isRefresh ? null : currentData?.characters,
        canRetry: true,
      ));
    }
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}