import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/features/home/presentation/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_blue_container.dart';
import 'widgets/doctor_speciality_list_view.dart';
import 'widgets/recommendation_doctor_and_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.w,
            16.h,
            20.w,
            28.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(16),
              const DoctorSpecialitySeeAll(),
              verticalSpace(16),
              const DoctorSpecialityListView(),
              verticalSpace(16),
              const RecommendationDoctorAndSeeAll(),
            ],
          ),
        ),
      ),
    );
  }
}
