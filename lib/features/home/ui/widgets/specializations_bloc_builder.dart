import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_list/doctors_shimmer_loading.dart';
import 'specialization_list/speciality_list_view.dart';
import 'specialization_list/speciality_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            specializationsSuccess: (specilizationDataList) {
              var specializationList =specilizationDataList;
              
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
     return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setUpError(){
    return const SizedBox.shrink();
  }
  setUpSuccess(specializationList){
 return SpecialityListView(
       specializationDataList: specializationList ?? [],
     );
  }
}