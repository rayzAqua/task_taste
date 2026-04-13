import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';
import 'package:task_taste/core/navigation/app_page.dart';
import 'package:task_taste/features/splash/presentation/pages/splash_page.dart';

class SplashRoutes {
  SplashRoutes._();

  static final GoRoute routes = GoRoute(
    path: '/${RouteNames.splash}',
    pageBuilder: (context, state) {
      return AppPage.build(state: state, child: const SplashPage());
    },
  );
}
