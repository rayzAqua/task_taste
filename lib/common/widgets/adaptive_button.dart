import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/common/widgets/widget_module.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/paddings/paddings.dart';
import 'package:task_taste/config/styles/radius/radiuses.dart';
import 'package:task_taste/config/styles/spacings/spacings.dart';

class AdaptiveButton extends StatelessWidget {
  final VoidCallback? onPressed;

  final String label;
  final Color? labelColor;
  final Color? disabledLabelColor;
  final double? labelFontSize;
  final FontWeight? labelFontWeight;
  final double? labelHeight;
  final double? labelLetterSpacing;

  final Widget? leading;
  final Widget? trailing;
  final double? gap;

  final Color? backgroundColor;
  final Color? disabledColor;

  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final AlignmentGeometry alignment;

  final bool fullWidth;
  final bool isLoading;
  final bool enableShadow;

  const AdaptiveButton({
    super.key,
    this.onPressed,
    required this.label,
    this.labelColor,
    this.disabledLabelColor,
    this.labelFontSize,
    this.labelFontWeight,
    this.labelHeight,
    this.labelLetterSpacing,
    this.leading,
    this.trailing,
    this.gap,
    this.backgroundColor,
    this.disabledColor,
    this.padding,
    this.borderSide,
    this.borderRadius,
    this.alignment = Alignment.center,
    this.fullWidth = false,
    this.isLoading = false,
    this.enableShadow = false,
  });

  bool get _disabled => onPressed == null || isLoading;

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    final radius = borderRadius ?? BorderRadius.circular(Radiuses.r16.r);

    final child = _buildContent(context);

    return Container(
      width: fullWidth ? double.infinity : null,
      decoration: BoxDecoration(
        border: borderSide == null ? null : Border.fromBorderSide(borderSide!),
        borderRadius: radius,
        boxShadow: _buildShadow(),
      ),
      child: isIOS
          ? CupertinoButton(
              onPressed: _disabled ? null : onPressed,
              alignment: alignment,
              padding:
                  padding ??
                  EdgeInsets.symmetric(
                    horizontal: Paddings.p16.w,
                    vertical: Paddings.p12.h,
                  ),
              borderRadius: radius,
              color: backgroundColor ?? ButtonColors.buttonBackgroundPrimary,
              disabledColor:
                  disabledColor ?? ButtonColors.buttonBackgroundDisabled,
              child: child,
            )
          : ElevatedButton(
              onPressed: _disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                alignment: alignment,
                padding:
                    padding ??
                    EdgeInsets.symmetric(
                      horizontal: Paddings.p16.w,
                      vertical: Paddings.p12.h,
                    ),
                shape: RoundedRectangleBorder(borderRadius: radius),
                backgroundColor: backgroundColor,
                disabledBackgroundColor:
                    disabledColor ?? ButtonColors.buttonBackgroundDisabled,
              ),
              child: child,
            ),
    );
  }

  List<BoxShadow>? _buildShadow() {
    if (!enableShadow || _disabled) return null;

    return [
      BoxShadow(
        color: AppColors.shadow,
        offset: UiConfig.shadowOffset,
        blurRadius: UiConfig.shadowBlur,
        spreadRadius: UiConfig.spreadRadius,
      ),
    ];
  }

  Color _textColor() {
    if (_disabled) {
      return disabledLabelColor ?? TextColors.textButtonDisabled;
    }

    return labelColor ?? TextColors.textButtonPrimary;
  }

  Row _buildRow(BuildContext context) {
    return Row(
      mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) ...[
          leading!,
          SizedBox(width: gap ?? Spacings.hor8),
        ],

        Text(
          label,
          style: TextTheme.of(context).bodyLarge?.copyWith(
            color: _textColor(),
            fontSize: labelFontSize ?? UiConfig.textSize,
            fontWeight: labelFontWeight,
            height: labelHeight ?? UiConfig.fontHeight,
            letterSpacing: labelLetterSpacing ?? UiConfig.letterSpacing,
          ),
        ),

        if (trailing != null) ...[
          SizedBox(width: gap ?? Spacings.hor8),
          trailing!,
        ],
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(opacity: isLoading ? 0.0 : 1.0, child: _buildRow(context)),

        if (isLoading) ...[CustomProgressIndicator()],
      ],
    );
  }
}
