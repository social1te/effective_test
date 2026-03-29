import 'package:auto_route/auto_route.dart';
import 'package:effective_test_app/src/features/characters/list/presentation/view/characters_list_screen.dart';
import 'package:effective_test_app/src/features/wrapper/presentation/view/main_wrapper_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainWrapperRoute.page, path: '/', initial: true),
  ];
}