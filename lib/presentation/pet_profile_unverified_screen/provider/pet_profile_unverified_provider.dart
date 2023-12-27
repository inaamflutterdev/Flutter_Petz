import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_unverified_screen/models/pet_profile_unverified_model.dart';

/// A provider class for the PetProfileUnverifiedScreen.
///
/// This provider manages the state of the PetProfileUnverifiedScreen, including the
/// current petProfileUnverifiedModelObj
class PetProfileUnverifiedProvider extends ChangeNotifier {
  PetProfileUnverifiedModel petProfileUnverifiedModelObj =
      PetProfileUnverifiedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
