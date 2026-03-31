import 'package:effective_test_app/src/common/extensions/context_extensions.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/widgets/animated_favorite_icon.dart';
import 'package:flutter/material.dart';

class CharacterTile extends StatelessWidget {
  const CharacterTile({
    super.key,
    required this.character,
    this.onTap,
    this.onToggleFavorite,
    this.isFavorite = false,
    this.showFavoriteButton = false,
  });

  final Character character;
  final VoidCallback? onTap;
  final VoidCallback? onToggleFavorite;
  final bool isFavorite;
  final bool showFavoriteButton;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          character.image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircleAvatar(
              backgroundColor: context.colorExt.secondaryBackgroundColor,
              radius: 25,
            );
          },
          errorBuilder: (_, _, _) => Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: context.colorExt.secondaryBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              size: 28,
              color: context.colorExt.unknownIndicatorColor,
            ),
          ),
        ),
      ),
      title: Text(
        character.name,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${character.species} • ${character.gender}'),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor:  _getStatusColor(context, character.status),
              ),
              const SizedBox(width: 4),
              Text(
                character.status,
                style: TextStyle(
                  color: _getStatusColor(context, character.status),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: showFavoriteButton
          ? AnimatedFavoriteIcon(
        isFavorite: isFavorite,
        onToggle: onToggleFavorite ?? () {},
      )
          : null,
      onTap: onTap,
    );
  }

  Color _getStatusColor(BuildContext context, String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return context.colorExt.positiveIndicatorColor;
      case 'dead':
        return context.colorExt.negativeIndicatorColor;
      default:
        return context.colorExt.unknownIndicatorColor;
    }
  }
}