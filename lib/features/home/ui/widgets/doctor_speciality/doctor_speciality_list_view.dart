import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_speciality_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: specializationDataList.length,
          itemBuilder: (context, index) {
            return DoctorSpecialityItem(
              index: index,
              specializationData: specializationDataList[index],
            );
          }),
    );
  }
}
