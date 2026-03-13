import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/assets.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/spacings/spacings.dart';

class SplashCreditWidget extends StatelessWidget {
  const SplashCreditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Sản phẩm được làm bởi',
          style: TextTheme.of(context).labelMedium!.copyWith(
            color: TextColors.textPrimary,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),

        _spaHor4(),

        ImageAssetWidget.fixed(
          url: Assets.teamLogo,
          color: BasicColors.black,
          width: UiConfig.teamLogoSize.w,
          height: UiConfig.teamLogoSize.w,
        ),

        _spaHor4(),

        Text(
          'JIN TEAM',
          style: TextTheme.of(context).labelLarge!.copyWith(
            color: TextColors.textPrimary,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _spaHor4() {
    return SizedBox(height: Spacings.hor4);
  }
}
