import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SignUpUpperText extends StatelessWidget {
  const SignUpUpperText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: TextStyles.font24BlueBold,
        ),
        verticalSpace(8),
        Text(
          'Sign up now and start exploring all that our\napp has to offer. We\'re excited to welcome\nyou to our community!',
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
