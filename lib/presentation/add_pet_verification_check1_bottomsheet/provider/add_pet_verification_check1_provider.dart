import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/add_pet_verification_check1_bottomsheet/models/add_pet_verification_check1_model.dart';

/// A provider class for the AddPetVerificationCheck1Bottomsheet.
///
/// This provider manages the state of the AddPetVerificationCheck1Bottomsheet, including the
/// current addPetVerificationCheck1ModelObj
class AddPetVerificationCheck1Provider extends ChangeNotifier {
  AddPetVerificationCheck1Model addPetVerificationCheck1ModelObj =
      AddPetVerificationCheck1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
