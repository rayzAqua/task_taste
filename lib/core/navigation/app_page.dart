import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppTransition { none, fade, slide }

class AppPage {
  AppPage._();

  static Page build({
    required GoRouterState state,
    required Widget child,
    AppTransition transition = AppTransition.none,
  }) {
    switch (transition) {
      case AppTransition.fade:
        return CustomTransitionPage(
          key: state.pageKey,
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      case AppTransition.slide:
        return CustomTransitionPage(
          key: state.pageKey,
          child: child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      case AppTransition.none:
        if (Platform.isIOS) {
          return CupertinoPage(key: state.pageKey, child: child);
        }
        return MaterialPage(key: state.pageKey, child: child);
    }
  }
}
