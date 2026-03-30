import 'package:auto_route/auto_route.dart';
import 'package:effective_test_app/src/config/styles/extensions/theme_colors.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/characters_list_screen.dart';
import 'package:effective_test_app/src/features/favorites/presentation/view/favorites_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainWrapperScreen extends StatefulWidget {
  const MainWrapperScreen({super.key});

  @override
  State<MainWrapperScreen> createState() => _MainWrapperScreenState();
}

class _MainWrapperScreenState extends State<MainWrapperScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const CharactersListScreen(),
    const FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeColors = ThemeColors.of(context);

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: themeColors.primaryBackgroundColor,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          elevation: 0,
          backgroundColor: themeColors.primaryBackgroundColor,
          selectedItemColor: themeColors.accentColor,
          unselectedItemColor: themeColors.unknownIndicatorColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Персонажи',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: const Icon(Icons.favorite),
              label: 'Избранное',
            ),
          ],
        ),
      ),
    );
  }
}