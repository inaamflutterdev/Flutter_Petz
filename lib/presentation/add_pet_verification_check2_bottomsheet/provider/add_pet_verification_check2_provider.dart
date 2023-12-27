import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/add_pet_verification_check2_bottomsheet/models/add_pet_verification_check2_model.dart';

/// A provider class for the AddPetVerificationCheck2Bottomsheet.
///
/// This provider manages the state of the AddPetVerificationCheck2Bottomsheet, including the
/// current addPetVerificationCheck2ModelObj
class AddPetVerificationCheck2Provider extends ChangeNotifier {
  AddPetVerificationCheck2Model addPetVerificationCheck2ModelObj =
      AddPetVerificationCheck2Model();

  @override
  void dispose() {
    super.dispose();
  }
}
