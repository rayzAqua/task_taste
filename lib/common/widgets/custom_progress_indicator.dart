import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double? size;
  final Color? color;
  final double? thickness;

  const CustomProgressIndicator({
    super.key,
    this.size,
    this.color,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    final bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    final resolvedSize = size ?? UiConfig.indicatorSize.w;

    return SizedBox(
      width: resolvedSize,
      height: resolvedSize,
      child: isIOS
          ? CupertinoActivityIndicator(
              color: color ?? AppColors.indicator,
              radius: resolvedSize / 2,
            )
          : CircularProgressIndicator(
              color: color ?? AppColors.indicator,
              strokeWidth: thickness ?? UiConfig.strokeWidth.w,
            ),
    );
  }
}
