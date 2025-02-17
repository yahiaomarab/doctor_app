import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/helper/constants.dart';
import 'package:doctor_app/core/helper/extensions.dart';
import 'package:doctor_app/core/helper/shared_pref_helper.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(appRouter: AppRouter()));
}
checkIfLoggedInUser()async{
  String? userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty()){
    isLoggedInUser =true;
  }else{
    isLoggedInUser=false;
  }
}