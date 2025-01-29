import 'package:flutter/material.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(375,812),
      minTextAdapt: true,
      child:MaterialApp(
        title: "Doctor App",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.homeScreen,
        debugShowCheckedModeBanner: false,
      )
    );
  }
}