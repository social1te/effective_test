enum SortingModel {
  nameAsc('Имя A-Z'),
  nameDesc('Имя Z-A'),
  status('Статус'),
  recentlyAdded('Недавно добавленные');

  final String label;
  const SortingModel(this.label);
}