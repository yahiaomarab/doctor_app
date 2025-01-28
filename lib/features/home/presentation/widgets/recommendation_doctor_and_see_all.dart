import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class RecommendationDoctorAndSeeAll extends StatelessWidget {
  const RecommendationDoctorAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
        Text(
          'Recommendation Doctor',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        )
      ],
    );
  }
}