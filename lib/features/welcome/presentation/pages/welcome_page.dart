import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/route_paths.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/spacings/spacings.dart';
import 'package:task_taste/features/welcome/presentation/animations/welcome_animation.dart';
import 'package:task_taste/features/welcome/presentation/widgets/welcome/start_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final WelcomeAnimation _welcomeAnimation;

  bool _isAnimationDone = false;

  @override
  void initState() {
    super.initState();

    _initAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _initAnimation() async {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _welcomeAnimation = WelcomeAnimation(controller: _animationController);

    await _animationController.forward();

    setState(() {
      _isAnimationDone = true;
    });
  }

  void _onPressed(BuildContext context) {
    context.go(RoutePaths.authLandingPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Spacings.hor20,
            vertical: Spacings.ver20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedFadeSlide(
                fade: _welcomeAnimation.titleFade,
                slide: _welcomeAnimation.titleSlide,
                child: Padding(
                  padding: EdgeInsets.only(right: Spacings.hor54),
                  child: Text(
                    'Quản lý dự án của bạn một cách thông minh',
                    style: TextTheme.of(context).headlineSmall!.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),

              AnimatedFadeSlide(
                fade: _welcomeAnimation.subtitleFade,
                slide: _welcomeAnimation.subtitleSlide,
                child: Text(
                  'Nâng cao năng lực làm việc nhóm',
                  style: TextTheme.of(context).headlineSmall!.copyWith(
                    color: TextColors.textSecondary,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0,
                  ),
                ),
              ),

              AnimatedFadeSlide(
                fade: _welcomeAnimation.buttonFade,
                slide: _welcomeAnimation.buttonSlide,
                child: StartButton(
                  onPressed: _isAnimationDone
                      ? () => _onPressed(context)
                      : () => {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
