import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_taste/config/constants/route_names.dart';

class SplashRoutes {
  SplashRoutes._();

  static final GoRoute routes = GoRoute(
    path: RouteNames.splash,
    pageBuilder: (context, state) {
      return MaterialPage(child: Placeholder());
    },
  );
}
