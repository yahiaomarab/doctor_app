import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 LowerCase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 UpperCase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 Special  Character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least 1 number ', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidated ? ColorsManager.gray : ColorsManager.darkBlue),
        )
      ],
    );
  }
}
