import 'package:flutter/material.dart';

class WelcomeAnimation {
  final AnimationController controller;

  late final Animation<double> titleFade;
  late final Animation<Offset> titleSlide;

  late final Animation<double> subtitleFade;
  late final Animation<Offset> subtitleSlide;

  late final Animation<double> buttonFade;
  late final Animation<Offset> buttonSlide;

  WelcomeAnimation({required this.controller}) {
    titleFade = _fade(0.0, 0.4);
    titleSlide = _slide(0.0, 0.4);

    subtitleFade = _fade(0.2, 0.6);
    subtitleSlide = _slide(0.2, 0.6);

    buttonFade = _fade(0.6, 1.0);
    buttonSlide = _slide(0.6, 1.0);
  }

  Animation<double> _fade(double begin, double end) {
    return CurvedAnimation(parent: controller, curve: Interval(begin, end));
  }

  Animation<Offset> _slide(double begin, double end) {
    return Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: controller, curve: Interval(begin, end)));
  }
}
