import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        minimumSize: WidgetStateProperty.all( Size(double.infinity, 52.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r)
          )
        )
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteSemiBold
      ),
    );
  }
}
