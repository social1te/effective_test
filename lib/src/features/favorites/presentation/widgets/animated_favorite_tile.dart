import 'package:effective_test_app/src/features/characters/list/domain/models/character.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/widgets/character_tile.dart';
import 'package:flutter/material.dart';

class AnimatedFavoriteTile extends StatefulWidget {
  const AnimatedFavoriteTile({
    super.key,
    required this.character,
    required this.onRemove,
  });

  final Character character;
  final VoidCallback onRemove;

  @override
  State<AnimatedFavoriteTile> createState() => _AnimatedFavoriteTileState();
}

class _AnimatedFavoriteTileState extends State<AnimatedFavoriteTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _removeController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  bool _isRemoving = false;
  bool _isFavorite = true;

  @override
  void initState() {
    super.initState();
    _removeController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _removeController, curve: Curves.bounceInOut),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.0, 0),
    ).animate(CurvedAnimation(parent: _removeController, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _removeController.dispose();
    super.dispose();
  }

  void _handleRemove() {
    if (_isRemoving) return;

    setState(() {
      _isRemoving = true;
      _isFavorite = false;
    });

    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        _removeController.forward().then((_) {
          widget.onRemove();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: CharacterTile(
          character: widget.character,
          isFavorite: _isFavorite,
          showFavoriteButton: true,
          onToggleFavorite: _handleRemove,
        ),
      ),
    );
  }
}