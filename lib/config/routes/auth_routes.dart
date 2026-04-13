import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';
import 'package:task_taste/core/navigation/app_page.dart';
import 'package:task_taste/features/auth/presentation/pages/login_page.dart';
import 'package:task_taste/features/placeholder/presentation/pages/placeholder_module.dart';

class AuthRoutes {
  AuthRoutes._();

  static final GoRoute routes = GoRoute(
    path: '/${RouteNames.auth}',
    pageBuilder: (context, state) =>
        AppPage.build(state: state, child: const NotFoundPage()),
    routes: [
      GoRoute(
        path: '/${RouteNames.login}',
        pageBuilder: (context, state) => AppPage.build(
          state: state,
          child: LoginPage(),
          transition: AppTransition.fade,
        ),
      ),

      GoRoute(
        path: '/${RouteNames.register}',
        pageBuilder: (context, state) =>
            AppPage.build(state: state, child: FeaturePlaceholderPage()),
      ),
    ],
  );
}
