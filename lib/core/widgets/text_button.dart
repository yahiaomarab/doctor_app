import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final TextStyle? textStyle;
  final double? horizontalPadding;
  final double? verticalPadding;

  const AppTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor,
      this.width,
      this.height,
      this.borderRadius,
      this.textStyle, this.horizontalPadding, this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding??12.w,
            vertical: verticalPadding?? 14.h,
          )
        ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStateProperty.all(
              backgroundColor ?? ColorsManager.mainBlue),
          minimumSize: WidgetStateProperty.all(
              Size(width ?? double.infinity, height ?? 50.h)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.r)))),
      child: Text(text, style: textStyle ?? TextStyles.font16WhiteSemiBold),
    );
  }
}
