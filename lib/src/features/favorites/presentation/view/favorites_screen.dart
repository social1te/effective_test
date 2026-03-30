import 'package:auto_route/auto_route.dart';
import 'package:effective_test_app/src/common/extensions/context_extensions.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/widgets/character_tile.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_event.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_state.dart';
import 'package:effective_test_app/src/features/favorites/presentation/widgets/sorting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: GetIt.instance<FavoritesBloc>()..add(const FavoritesEvent.loadFavorites()),
      child: const _FavoritesView(),
    );
  }
}

class _FavoritesView extends StatelessWidget {
  const _FavoritesView();

  @override
  Widget build(BuildContext context) {
    final themeColors = context.colorExt;

    return Scaffold(
      appBar: AppBar(
        actions: const [SortingWidget()],
      ),
      body: SafeArea(
        child: BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) {
            if (state is FavoritesInitial || state is FavoritesLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is FavoritesError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 48, color: Colors.red),
                    const SizedBox(height: 16),
                    Text(
                      state.message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              );
            }

            if (state is FavoritesLoaded) {
              if (state.favorites.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 64,
                        color: themeColors.unknownIndicatorColor,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No favorites yet',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: themeColors.unknownIndicatorColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Add characters to favorites from the list',
                        style: TextStyle(
                          fontSize: 14,
                          color: themeColors.unknownIndicatorColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                itemCount: state.favorites.length,
                itemBuilder: (context, index) {
                  final character = state.favorites[index];
                  return CharacterTile(
                    character: character,
                    isFavorite: true,
                    showFavoriteButton: true,
                    onToggleFavorite: () {
                      context.read<FavoritesBloc>().add(
                        FavoritesEvent.removeFavorite(character.id),
                      );
                    },
                  );
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}