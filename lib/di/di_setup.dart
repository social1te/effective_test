import 'package:effective_test_app/di/modules/characters_list_module.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDependencies() {
  charactersListModule(getIt);
}