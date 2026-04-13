import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';
import 'package:task_taste/core/navigation/app_page.dart';
import 'package:task_taste/features/welcome/presentation/pages/auth_landing_page.dart';

class AuthLandingRoutes {
  AuthLandingRoutes._();

  static final GoRoute routes = GoRoute(
    path: '/${RouteNames.authLanding}',
    pageBuilder: (context, state) =>
        AppPage.build(state: state, child: const AuthLandingPage()),
  );
}
