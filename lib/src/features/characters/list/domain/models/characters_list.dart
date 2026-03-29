import 'character.dart';

class CharactersList {
  const CharactersList({
    required this.characters,
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  final List<Character> characters;
  final int count;
  final int pages;
  final String? next;
  final String? prev;
}