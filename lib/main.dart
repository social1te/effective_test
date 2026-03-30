import 'package:effective_test_app/core/database/hive.dart';
import 'package:effective_test_app/di/di.dart';
import 'package:effective_test_app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
  initHive();
  await dotenv.load(fileName: '.env');
  runApp(App());
}
