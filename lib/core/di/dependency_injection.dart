import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
