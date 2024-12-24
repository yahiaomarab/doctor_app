import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/presentation/widgets/already_have_account_text.dart';
import 'package:doctor_app/features/sign_up/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:doctor_app/features/sign_up/presentation/widgets/sign_up_upper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/text_button.dart';
import '../../login/presentation/widgets/terms_and_conditions_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SignUpUpperText(),
                  verticalSpace(36),
                    Column(
                    children: [
                     const SignUpForm(),
                    verticalSpace(40),
                    AppTextButton(
                      text: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                    ],
                   )
                ],
              ),
            ),
          ),
        ),  
    );
  }
    void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}