import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_response_body.dart';

class SignUpRepo{
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponseBody>> signUp(SignUpRequestBody signUpRequestBody)async{
   try {
    final response=  await _apiService.signUp(signUpRequestBody);
    return ApiResult.success(response);
   } catch (error) {
     return ApiResult.failure(ErrorHandler.handle(error));
   }
  }
}