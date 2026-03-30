import 'package:effective_test_app/src/common/extensions/context_extensions.dart';
import 'package:effective_test_app/src/features/favorites/domain/models/sorting_model.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_event.dart';
import 'package:effective_test_app/src/features/favorites/presentation/bloc/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortingWidget extends StatelessWidget {
  const SortingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final isActive = state is FavoritesLoaded && state.favorites.isNotEmpty;

        return isActive
            ? PopupMenuButton<SortingModel>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: context.colorExt.secondaryBackgroundColor,
          elevation: 0,
          icon: Icon(Icons.sort, color: context.colorExt.accentColor),
          tooltip: 'Сортировка по',
          onSelected: (sortType) {
            context.read<FavoritesBloc>().add(
              FavoritesEvent.changeSortType(sortType),
            );
          },
          itemBuilder: (context) => SortingModel.values.map((type) {
            return PopupMenuItem(
              value: type,
              child: Row(
                children: [
                  if (state.sortingModel == type)
                    Icon(
                      Icons.check,
                      color: context.colorExt.accentColor,
                      size: 20,
                    ),
                  if (state.sortingModel == type) const SizedBox(width: 8),
                  Text(type.label),
                ],
              ),
            );
          }).toList(),
        )
            : IconButton(
          icon: Icon(
            Icons.sort,
            color: context.colorExt.unknownIndicatorColor.withOpacity(0.5),
          ),
          onPressed: null,
        );
      },
    );
  }
}