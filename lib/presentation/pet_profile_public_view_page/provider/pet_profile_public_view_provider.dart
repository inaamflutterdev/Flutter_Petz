import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_public_view_page/models/pet_profile_public_view_model.dart';

/// A provider class for the PetProfilePublicViewPage.
///
/// This provider manages the state of the PetProfilePublicViewPage, including the
/// current petProfilePublicViewModelObj
class PetProfilePublicViewProvider extends ChangeNotifier {
  PetProfilePublicViewModel petProfilePublicViewModelObj =
      PetProfilePublicViewModel();

  @override
  void dispose() {
    super.dispose();
  }
}
