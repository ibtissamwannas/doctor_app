import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/widgets/doctors_vertical_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsVerticalListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsVerticalListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsVerticalListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
