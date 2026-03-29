import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get(String name) {
    final String? value = dotenv.env[name];
    if (value != null) {
      return value;
    }
    throw Exception('No value of name $name was found');
  }
}
