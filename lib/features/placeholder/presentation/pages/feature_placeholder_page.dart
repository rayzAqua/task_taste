import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/assets.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class FeaturePlaceholderPage extends StatelessWidget {
  const FeaturePlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptyWidget(
              url: Assets.inDevelopment,
              title: 'Tính năng đang trong quá trình phát triển.',
              description: 'Xin vui lòng chờ đợi.',
            ),

            // * TEMP BUTTON
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: ButtonColors.buttonBackgroundPrimary,
              ),
              child: Text(
                'Quay lại',
                style: TextTheme.of(context).labelSmall!.copyWith(
                  color: TextColors.textButtonPrimary,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
