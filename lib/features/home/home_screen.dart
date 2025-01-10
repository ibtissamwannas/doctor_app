import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_app/features/home/widgets/doctors_blue_container.dart';
import 'package:doctor_app/features/home/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_app/features/home/widgets/doctors_vertical_list_view.dart';
import 'package:doctor_app/features/home/widgets/home_top_bar.dart';
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
              verticalSpace(16),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsVerticalListView(),
            ],
          ),
        ),
      ),
    );
  }
}
