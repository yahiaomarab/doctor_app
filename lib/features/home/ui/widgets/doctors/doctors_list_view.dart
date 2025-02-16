import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>?doctorsList;
  const DoctorsListView({super.key,  this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorsList?.length,
          itemBuilder: (context, index) {
            return DoctorsListViewItem(
              doctorsModel: doctorsList?[index],
            );
          }),
    );
  }
}
