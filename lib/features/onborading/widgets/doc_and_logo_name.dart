import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocAndLogoName extends StatelessWidget {
  const DocAndLogoName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo.svg',
        ),
        SizedBox(
          width: 10.h,
        ),
        Text(
          "Docdoc",
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
