import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/assets.dart';
import 'package:task_taste/config/constants/route_paths.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/features/splash/presentation/widgets/splash_credit_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigator();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // * TEMP
  void _navigator() {
    Future.delayed(Duration(seconds: 4), () {
      if (context.mounted) {
        context.go(RoutePaths.welcomePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: ImageAssetWidget.fractional(
                url: Assets.logoSologan,
                widthFactor: UiConfig.splashLogoFactor,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: SplashCreditWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
