
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specializations_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(
          List<SpecializationsData?>? specializationDataList) =
      SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;

      //Doctors
    const factory HomeState.doctorsSuccess(
          List<Doctors?>? doctorsDataList) =
      DoctorsSuccess;
   const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;

}
