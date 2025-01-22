import 'package:doctor_app/core/helper/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      text: 'Get Started',
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
    );
  }
}
