import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( DoctorApp(
    appRouter:AppRouter()
  ));
}