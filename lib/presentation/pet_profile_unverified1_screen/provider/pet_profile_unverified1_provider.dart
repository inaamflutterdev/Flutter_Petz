import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_unverified1_screen/models/pet_profile_unverified1_model.dart';

/// A provider class for the PetProfileUnverified1Screen.
///
/// This provider manages the state of the PetProfileUnverified1Screen, including the
/// current petProfileUnverified1ModelObj
class PetProfileUnverified1Provider extends ChangeNotifier {
  PetProfileUnverified1Model petProfileUnverified1ModelObj =
      PetProfileUnverified1Model();

  bool privacySettingsCheckBox = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeCheckBox1(bool value) {
    privacySettingsCheckBox = value;
    notifyListeners();
  }
}
