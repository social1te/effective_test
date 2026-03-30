import 'package:hive_ce/hive.dart';
import 'package:effective_test_app/src/features/favorites/data/adapters/character_adapter.dart';
import 'package:effective_test_app/src/features/favorites/data/adapters/origin_adapter.dart';
import 'package:effective_test_app/src/features/favorites/data/adapters/location_adapter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initHive() async {
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(CharacterAdapter());
  Hive.registerAdapter(OriginAdapter());
  Hive.registerAdapter(LocationAdapter());
}
