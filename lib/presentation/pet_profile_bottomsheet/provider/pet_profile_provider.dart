import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_bottomsheet/models/pet_profile_model.dart';

/// A provider class for the PetProfileBottomsheet.
///
/// This provider manages the state of the PetProfileBottomsheet, including the
/// current petProfileModelObj
class PetProfileProvider extends ChangeNotifier {
  PetProfileModel petProfileModelObj = PetProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
