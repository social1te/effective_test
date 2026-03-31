import 'package:auto_route/auto_route.dart';
import 'package:effective_test_app/src/common/extensions/context_extensions.dart';
import 'package:effective_test_app/src/config/styles/colors.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_bloc.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_event.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_state.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/widgets/character_tile.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_event.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class CharactersListScreen extends StatelessWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.instance<CharactersListBloc>()
            ..add(LoadCharactersEvent(page: 1)),
      child: const CharactersListView(),
    );
  }
}

class CharactersListView extends StatefulWidget {
  const CharactersListView({super.key});

  @override
  State<CharactersListView> createState() => _CharactersListViewState();
}

class _CharactersListViewState extends State<CharactersListView> {
  final _scrollController = ScrollController();
  static const _scrollThreshold = 250.0;

  final _favoritesBloc = GetIt.instance<FavoritesBloc>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadFavoritesStatus();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _loadFavoritesStatus() {
    if (_favoritesBloc.state is FavoritesInitial) {
      _favoritesBloc.add(const FavoritesEvent.loadFavorites());
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - _scrollThreshold) {
      _loadNextPage();
    }
  }

  void _loadNextPage() {
    final bloc = context.read<CharactersListBloc>();
    final state = bloc.state;

    if (state is CharactersListLoaded && state.hasMore && !state.isLoading) {
      bloc.add(LoadNextPageEvent(page: state.currentPage + 1));
    }
  }

  Future<void> _onRefresh() async {
    context.read<CharactersListBloc>().add(RefreshCharactersEvent());
  }

  void _toggleFavorite(int characterId) {
    final charactersBloc = context.read<CharactersListBloc>();
    final state = charactersBloc.state;

    if (state is! CharactersListLoaded) return;

    final character = state.characters.firstWhere((c) => c.id == characterId);

    _favoritesBloc.add(FavoritesEvent.toggleFavorite(character));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Персонажи'),
      ),
      body: BlocBuilder<CharactersListBloc, CharactersListState>(
        builder: (context, state) {
          if (state is CharactersListInitial ||
              state is CharactersListLoading) {
            return Center(
              child: CircleAvatar(
                radius: 24,
                backgroundColor: context.colorExt.accentColor,
                child: CircularProgressIndicator(color: Colors.lime),
              ),
            );
          }

          if (state is CharactersListError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: context.colorExt.negativeIndicatorColor,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 16),
                  if (state.canRetry)
                    ElevatedButton(
                      onPressed: () {
                        context.read<CharactersListBloc>().add(
                          LoadCharactersEvent(page: 1),
                        );
                      },
                      child: const Text('Retry'),
                    ),
                ],
              ),
            );
          }

          if (state is CharactersListLoaded) {
            if (state.characters.isEmpty) {
              return const Center(child: Text('No characters found'));
            }

            return BlocBuilder<FavoritesBloc, FavoritesState>(
              bloc: _favoritesBloc,
              builder: (context, favoritesState) {
                return RefreshIndicator(
                  backgroundColor: context.colorExt.accentColor,
                  color: Colors.lime,
                  onRefresh: _onRefresh,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount:
                        state.characters.length + (state.hasMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == state.characters.length) {
                        return Center(
                          child: LinearProgressIndicator(
                            color: context.colorExt.accentColor,
                            backgroundColor: Colors.lime,
                            minHeight: 4,
                          ),
                        );
                      }

                      final character = state.characters[index];
                      final isFav =
                          favoritesState is FavoritesLoaded &&
                          favoritesState.favoriteIds.contains(character.id);

                      return CharacterTile(
                        character: character,
                        isFavorite: isFav,
                        showFavoriteButton: true,
                        onToggleFavorite: () => _toggleFavorite(character.id),
                      );
                    },
                  ),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
