import 'package:doctor_app/core/helper/app_regex.dart';
import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/presentation/widgets/password_validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;
   bool hasLowerCase=false;
   bool hasUpperCase=false;
   bool hasSpecialCharacters=false;
   bool hasNumber=false;
   bool hasMinLength=false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPasswordControllerListener();
  }
void setUpPasswordControllerListener() {
  passwordController.addListener(()
   {
     setState(() {
      hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
      hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
      hasSpecialCharacters = AppRegex.hasSpecialCharacter(passwordController.text);
      hasMinLength = AppRegex.hasMinLength(passwordController.text);
      hasNumber = AppRegex.hasNumber(passwordController.text);
    });
   }
  );
}
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return "Please Enter a valid email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(17),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
                return "Please Enter a valid password";
              }
            },
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child:
                  Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
            ),
          ),
           verticalSpace(24),
           PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasUpperCase: hasUpperCase,
           ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();

  }
  
}
