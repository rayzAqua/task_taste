import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';
import 'package:task_taste/config/routes/splash_routes.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter routers = GoRouter(
    initialLocation: RouteNames.splash,
    routes: [SplashRoutes.routes],
  );
}
