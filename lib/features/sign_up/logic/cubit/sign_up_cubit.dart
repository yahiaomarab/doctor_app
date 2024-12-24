import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/sign_up_request_body.dart';
import '../../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController passwordConfermationController =TextEditingController();
  TextEditingController phoneController =TextEditingController();
  TextEditingController nameController =TextEditingController();
  final formKey= GlobalKey<FormState>();
  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name:nameController.text,
        email:emailController.text,
        phone:phoneController.text,
        password:passwordController.text,
        passwordConfirmation:passwordConfermationController.text,
        gender:0,
      )
    );
    response.when(success: (signUpResponse) {
      emit(SignUpState.success(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
