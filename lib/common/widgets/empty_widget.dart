import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/spacings/spacings.dart';

class EmptyWidget extends StatelessWidget {
  final String url;
  final String title;
  final String description;

  const EmptyWidget({
    super.key,
    required this.url,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageAssetWidget.fractional(
            url: url,
            widthFactor: UiConfig.emptyImageFactor,
          ),

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextTheme.of(context).titleMedium!.copyWith(
              color: TextColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: Spacings.hor4),

          Text(
            description,
            textAlign: TextAlign.center,
            style: TextTheme.of(context).titleMedium!.copyWith(
              color: TextColors.textPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
