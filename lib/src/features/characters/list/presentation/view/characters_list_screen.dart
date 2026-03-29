import 'package:auto_route/auto_route.dart';
import 'package:effective_test_app/src/config/styles/colors.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_bloc.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_event.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/bloc/characters_list_state.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/widgets/character_tile.dart';
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
  static const _scrollThreshold = 250;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CharactersListBloc, CharactersListState>(
          builder: (context, state) {
            if (state is CharactersListInitial ||
                state is CharactersListLoading) {
              return const Center(child: CircularProgressIndicator());
            }
        
            if (state is CharactersListError) {
              return Center(child: Image.asset('assets/images/error_image.png'));
            }
            if (state is CharactersListLoaded) {
              return RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: state.characters.length + (state.hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == state.characters.length) {
                      return Center(child: LinearProgressIndicator(
                        color: AppColors.guacamole,
                        backgroundColor: Colors.lime,
                        minHeight: 4,
                      ));
                    }
        
                    final character = state.characters[index];
        
                    return CharacterTile(character: character, onTap: () {});
                  },
                ),
              );
            }
        
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
