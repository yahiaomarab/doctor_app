import 'package:flutter/material.dart';
import 'doctor_recommeded_card.dart';

class DoctorsRecommendationListView extends StatelessWidget {
  const DoctorsRecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return DoctorRecommededCard();
          }),
    );
  }
}
