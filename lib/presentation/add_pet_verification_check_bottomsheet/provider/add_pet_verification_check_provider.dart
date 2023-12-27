import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/add_pet_verification_check_bottomsheet/models/add_pet_verification_check_model.dart';

/// A provider class for the AddPetVerificationCheckBottomsheet.
///
/// This provider manages the state of the AddPetVerificationCheckBottomsheet, including the
/// current addPetVerificationCheckModelObj
class AddPetVerificationCheckProvider extends ChangeNotifier {
  AddPetVerificationCheckModel addPetVerificationCheckModelObj =
      AddPetVerificationCheckModel();

  @override
  void dispose() {
    super.dispose();
  }
}
