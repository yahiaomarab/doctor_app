import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final SpecializationData? specializationData;
 const DoctorSpecialityItem({super.key, required this.index, required this.specializationData});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                   specializationData?.name?? 'Specialization',
                    style: TextStyles.font12DarkBlueRegular,
                  )
                ],
              ),
            );
  }
}