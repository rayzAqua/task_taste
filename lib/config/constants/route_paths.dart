import 'package:task_taste/config/constants/route_names.dart';

class RoutePaths {
  RoutePaths._();

  static final String splashPath = '/${RouteNames.splash}';

  static final String welcomePath = '/${RouteNames.welcome}';

  static final String authLandingPath = '/${RouteNames.authLanding}';

  static final String loginPath = '/${RouteNames.auth}/${RouteNames.login}';

  static final String registerPath =
      '/${RouteNames.auth}/${RouteNames.register}';
}
