import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorRecommededCard extends StatelessWidget {
  const DoctorRecommededCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsetsDirectional.only(start: 10.w, top: 30.h),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/doctor.png',
                    width: 110.w,
                    height: 110.h,
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Randy Wigham',
                          style: TextStyles.font16DarkBlackBold,
                        ),
                        verticalSpace(10),
                        Row(
                          children: [
                            Text(
                              'General',
                              style: TextStyles.font12GrayMedium,
                            ),
                            horizontalSpace(5),
                            Text('|', style: TextStyles.font12GrayMedium),
                            horizontalSpace(5),
                            Text('RSUD Gatot Subroto',
                                style: TextStyles.font12GrayMedium),
                          ],
                        ),
                        verticalSpace(10),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: ColorsManager.starColor,
                              size: 18.sp,
                            ),
                            Text(
                              '4.8',
                              style: TextStyles.font12GrayMedium,
                            ),
                            Text(
                              '(,279 reviews)',
                              style: TextStyles.font12GrayMedium,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}