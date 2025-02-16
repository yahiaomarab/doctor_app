import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_speciality/doctor_speciality_list_view.dart';
import 'doctors/doctors_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SpecializationsLoading ||
            current is SpecializationsSuccess ||
            current is SpecializationsError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationsLoading: () {
              return setUpLoading();
            },
            specializationsSuccess: (specializationResponseModel) {
              var specializationList =
                  specializationResponseModel.specilizationDataList;
              
            return setUpSuccess(specializationList);
            },
            specializationsError: (errorHandler) {
              return setUpError();
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        });
  }
  Widget setUpLoading(){
     return  SizedBox(
      height: 100.h,
      child: Center(
        child: CircularProgressIndicator(),
      ),
     );
  }

  Widget setUpError(){
    return const SizedBox.shrink();
  }
  setUpSuccess(specializationList){
 return Expanded(
                child: Column(
                  children: [
                    DoctorSpecialityListView(
                      specializationDataList: specializationList ?? [],
                    ),
                    verticalSpace(8),
                    DoctorsListView(
                      doctorsList: specializationList?[0]?.doctorsList,
                    ),
                  ],
                ),
              );
  }
}