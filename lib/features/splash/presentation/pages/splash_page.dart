import 'package:flutter/material.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/assets.dart';
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
  }

  @override
  void dispose() {
    super.dispose();
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
                widthFactor: UiConfig.appLogoFactor,
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
