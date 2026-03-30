enum SortingModel {
  nameAsc('Name A-Z'),
  nameDesc('Name Z-A'),
  status('Status'),
  recentlyAdded('Recently Added');

  final String label;
  const SortingModel(this.label);
}