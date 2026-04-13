import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/paddings/paddings.dart';
import 'package:task_taste/config/styles/radius/radiuses.dart';
import 'package:task_taste/config/styles/spacings/spacings.dart';
import 'package:task_taste/features/welcome/presentation/widgets/welcome/arrow_forward_icon.dart';

class StartButton extends StatefulWidget {
  final VoidCallback onPressed;

  const StartButton({super.key, required this.onPressed});

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  double _scale = 1.0;

  void _onTapDown(_) => setState(() => _scale = 0.95);
  void _onTapUp(_) => setState(() => _scale = 1.0);
  void _onTapCancel() => setState(() => _scale = 1.0);

  @override
  Widget build(BuildContext context) {
    return _buildAnimationGesture(
      child: _buildShadow(child: _buildInlWell(child: _buildContent())),
    );
  }

  GestureDetector _buildAnimationGesture({required Widget child}) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: child,
      ),
    );
  }

  Container _buildShadow({required Widget child}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Radiuses.r32.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            offset: UiConfig.shadowOffset,
            blurRadius: UiConfig.shadowBlur,
            spreadRadius: UiConfig.spreadRadius,
          ),
        ],
      ),
      child: child,
    );
  }

  Material _buildInlWell({required Widget child}) {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(Radiuses.r32.r),
      child: InkWell(
        onTap: widget.onPressed,
        borderRadius: BorderRadius.circular(Radiuses.r32.r),
        splashColor: Colors.white10,
        child: Ink(
          padding: EdgeInsets.symmetric(
            horizontal: Paddings.p16.w,
            vertical: Paddings.p12.h,
          ),
          decoration: BoxDecoration(
            color: ButtonColors.buttonBackgroundPrimary,
            borderRadius: BorderRadius.circular(Radiuses.r32.r),
          ),
          child: child,
        ),
      ),
    );
  }

  Row _buildContent() {
    return Row(
      children: [
        SizedBox(width: Spacings.hor10),

        Expanded(
          child: Text(
            'Bắt đầu!',
            overflow: TextOverflow.ellipsis,
            style: TextTheme.of(context).displaySmall!.copyWith(
              color: TextColors.textButtonPrimary,
              fontSize: 31.sp,
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),
        ),

        ArrowForwardIcon(),
      ],
    );
  }
}
