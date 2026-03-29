import 'package:effective_test_app/src/config/styles/extensions/theme_colors.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:flutter/material.dart';

class CharacterTile extends StatelessWidget {
  const CharacterTile({
    super.key,
    required this.character,
    this.onTap,
  });

  final Character character;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final themeColors = ThemeColors.of(context);

    return ListTile(
      leading: ClipOval(
        child: Image.network(
          character.image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const SizedBox(
              width: 50,
              height: 50,
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            );
          },
          errorBuilder: (_, _, _) => Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: themeColors.unknownIndicatorColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, size: 28),
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
          const SizedBox(height: 4),
          Text('${character.species} • ${character.gender}'),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: character.status.toLowerCase() == 'alive'
                      ? themeColors.positiveIndicatorColor
                      : character.status.toLowerCase() == 'dead'
                      ? themeColors.negativeIndicatorColor
                      : themeColors.unknownIndicatorColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: themeColors.primaryBackgroundColor,
                    width: 1.5,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                character.status,
                style: TextStyle(
                  color: character.status.toLowerCase() == 'alive'
                      ? themeColors.positiveIndicatorColor
                      : character.status.toLowerCase() == 'dead'
                      ? themeColors.negativeIndicatorColor
                      : themeColors.unknownIndicatorColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}