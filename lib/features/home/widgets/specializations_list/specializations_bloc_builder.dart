import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/widgets/doctors_list.dart/doctors_shimmer_loading.dart';
import 'package:doctor_app/features/home/widgets/specializations_list/speciality_list_view.dart';
import 'package:doctor_app/features/home/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              return setupLoading();
            },
            specializationsSuccess: (specializationsDataList) {
              var specializationsList = specializationsDataList;
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  Widget setupLoading() {
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

  Widget setupSuccess(specializationsList) {
    return Column(
      children: [
        SpecialityListView(
          specializationDataList: specializationsList ?? [],
        ),
      ],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
