import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/widgets/doctors_list.dart/doctors_bloc_builder.dart';
import 'package:doctor_app/features/home/widgets/doctors_blue_container.dart';
import 'package:doctor_app/features/home/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_app/features/home/widgets/home_top_bar.dart';
import 'package:doctor_app/features/home/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 29, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget setupLoading() {
  return const SizedBox(
    height: 100,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Widget setupError() {
  return const SizedBox.shrink();
}
