import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';
import 'package:task_taste/config/routes/auth_landing_routes.dart';
import 'package:task_taste/config/routes/auth_routes.dart';
import 'package:task_taste/config/routes/splash_routes.dart';
import 'package:task_taste/config/routes/welcome_routes.dart';
import 'package:task_taste/features/placeholder/presentation/pages/not_found_page.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter routers = GoRouter(
    initialLocation: '/${RouteNames.splash}',
    routes: [
      SplashRoutes.routes,
      WelcomeRoutes.routes,
      AuthLandingRoutes.routes,
      AuthRoutes.routes,
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
