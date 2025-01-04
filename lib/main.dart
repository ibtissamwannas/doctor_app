import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
