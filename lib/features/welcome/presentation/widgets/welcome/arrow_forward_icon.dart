import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/paddings/paddings.dart';

class ArrowForwardIcon extends StatelessWidget {
  const ArrowForwardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BackgroundColors.backgroundInputField,
      ),
      padding: EdgeInsets.all(Paddings.p6),
      child: Icon(
        Icons.arrow_forward,
        size: 34.sp,
        color: IconColors.iconPrimary,
      ),
    );
  }
}
