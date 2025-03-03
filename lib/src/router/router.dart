import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page)
  ];
}
