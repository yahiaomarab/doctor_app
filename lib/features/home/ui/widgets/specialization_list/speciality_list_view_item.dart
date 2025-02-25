import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  const SpecialityListViewItem(
      {super.key,
      required this.index,
      required this.specializationData,
      required this.selectedIndex});
  final int index;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [

          index==selectedIndex?
           Container(
            decoration: BoxDecoration(
              border: Border.all(color:ColorsManager.darkBlue ),
              shape: BoxShape.circle,
            ),
            child:   CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 42.h,
              width: 42.w,
            ),
          ),
           )
          :
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
            specializationData?.name ?? 'Specialization',
            style:index==selectedIndex? TextStyles.font14DarkBlueBold: TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
